//
//  Person.swift
//  Profile
//
//  Created by Piotr Guzia on 06/05/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

struct Person: Codable {
    
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    let description: String
}
