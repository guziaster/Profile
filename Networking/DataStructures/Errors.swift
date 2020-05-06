//
//  Errors.swift
//  Networking
//
//  Created by Piotr Guzia on 28/04/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

public enum NetworkingError: Error {
    case URLError
    case responseError
    case unknownError
    case timedOutError
    case noInternetConnectionError
    case noDataError
    case JSONDecodingError
}
