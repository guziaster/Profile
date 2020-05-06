//
//  Parser.swift
//  Networking
//
//  Created by Piotr Guzia on 28/04/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

final class Parser {
    
    private let decoder: JSONDecoder
    
    init() {
        decoder = JSONDecoder()
    }
    
    func parse<T: Codable>(_ response: DataResponse) -> Result<T, Error> {
        guard let apiResponse = response.response else {
            return .failure(NetworkingError.responseError)
        }
        
        switch apiResponse.statusCode {
        case 200...206:
            return handle(response)
        default:
            return .failure(parse(response.error))
        }
    }
    
    func handle<T: Codable>(_ response: DataResponse) -> Result<T, Error> {
        guard let data = response.data else {
            return .failure(NetworkingError.noDataError)
        }
        
        do {
            let item = try decoder.decode(T.self, from: data)
            return .success(item)
        } catch {
            return .failure(NetworkingError.JSONDecodingError)
        }
    }
    
    private func parse(_ error: Error?) -> Error {
        guard let error = error as NSError? else {
            return NetworkingError.unknownError
        }
        
        switch error.code {
        case NSURLErrorTimedOut:
            return NetworkingError.timedOutError
        case NSURLErrorNotConnectedToInternet:
            return NetworkingError.noInternetConnectionError
        default:
            return NetworkingError.unknownError
        }
    }
}
