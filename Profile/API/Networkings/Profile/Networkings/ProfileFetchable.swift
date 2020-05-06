//
//  ProfileFetchable.swift
//  Profile
//
//  Created by Piotr Guzia on 06/05/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

typealias ProfileCompletion = ((Result<Profile, Error>) -> Void)

protocol ProfileFetchable {
    func fetch(completion: @escaping ProfileCompletion)
}
