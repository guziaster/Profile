//
//  ProfileNetworking.swift
//  Profile
//
//  Created by Piotr Guzia on 06/05/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation
import Networking

final class ProfileNetworking: BaseNetworking, ProfileFetchable {
    
    func fetch(completion: @escaping ProfileCompletion) {
        let request = ProfileRequest.fetch
        api.execute(request, completion: completion)
    }
}
