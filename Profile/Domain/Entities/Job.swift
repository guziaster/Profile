//
//  Job.swift
//  Profile
//
//  Created by Piotr Guzia on 06/05/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

struct Job: Codable {
    
    let companyName: String
    let startDate: Date
    let endDate: Date?
    let responsibilites: [String]
}
