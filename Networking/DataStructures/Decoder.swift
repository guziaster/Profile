//
//  Decoder.swift
//  Networking
//
//  Created by Piotr Guzia on 28/04/2020.
//  Copyright © 2020 Piotr Guzia. All rights reserved.
//

import Foundation

final class Decoder<T: Codable> {
    
    func decode(_ response: DataResponse) -> Result<T, Error> {
        return Parser().parse(response)
    }
}
