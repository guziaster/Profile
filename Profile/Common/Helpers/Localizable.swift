//
//  Localizable.swift
//  Profile
//
//  Created by Piotr Guzia on 28/04/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

protocol Localizable {
    var localized: String { get }
}

extension String: Localizable {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
