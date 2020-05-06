//
//  Profile.swift
//  Profile
//
//  Created by Piotr Guzia on 06/05/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

struct Profile: Codable {
    
    let person: Person
    let jobs: [Job]
    let technicalSkills: [String]
    let otherSkills: [String]
}
