//
//  APIRequest.swift
//  Networking
//
//  Created by Piotr Guzia on 28/04/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ApiRequest {
    var path: String { get }
    var parameters: Parameters? { get }
}

