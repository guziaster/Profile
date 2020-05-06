//
//  API.swift
//  Networking
//
//  Created by Piotr Guzia on 06/05/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

final public class API {
    
    private let session: URLSession!
    private let baseURL: String
    
    public init(baseURL: String) {
        self.baseURL = baseURL
        let config = URLSessionConfiguration.default
        session = URLSession(configuration: config)
    }
    
    public func execute<T: Codable>(_ request: ApiRequest, completion: @escaping ((Result<T, Error>) -> Void)) {
        guard let url = preapareURL(from: request) else {
            completion(Result.failure(NetworkingError.URLError))
            return
        }
        
        session.dataTask(with: url) { data, response, error in
            let dataResponse = DataResponse(response: response as? HTTPURLResponse, data: data, error: error)
            let decodedResponse: Result<T, Error> = Decoder<T>().decode(dataResponse)
            completion(decodedResponse)
        }.resume()
    }
    
    private func preapareURL(from request: ApiRequest) -> URL? {
        let urlString = baseURL + request.path
        var urlCompoennts = URLComponents(string: urlString)
        
        if let parameters = request.parameters {
            let queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value as? String)}
            urlCompoennts?.queryItems = queryItems
        }
        
        return urlCompoennts?.url?.absoluteURL
    }
}
