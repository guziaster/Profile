//
//  DataResponse.swift
//  Networking
//
//  Created by Piotr Guzia on 28/04/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

public struct DataResponse {

    public let response: HTTPURLResponse?
    public let data: Data?
    public var error: Error?
}
