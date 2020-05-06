//
//  ProfileRequest.swift
//  Profile
//
//  Created by Piotr Guzia on 06/05/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation
import Networking

enum ProfileRequest {
    case fetch
}

extension ProfileRequest: ApiRequest {
    
    var path: String {
        switch self {
        case .fetch:
            return "profile"
        }
    }
    
    var parameters: Parameters? {
        return nil
    }
}
