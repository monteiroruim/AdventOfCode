//
//  Utils.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 12.12.19.
//  Copyright © 2019 Pereira Orlando. All rights reserved.
//

import Foundation

// Extract the Int value from the string L1010,D347,...
extension Int {
    static func parseIntFromString(from string: String) -> Int? {
        return Int(string.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
    }
}
