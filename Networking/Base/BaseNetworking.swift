//
//  BaseNetworking.swift
//  Networking
//
//  Created by Piotr Guzia on 06/05/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

open class BaseNetworking {
    
    public let api: API
    
    public init(api: API) {
        self.api = api
    }
}
