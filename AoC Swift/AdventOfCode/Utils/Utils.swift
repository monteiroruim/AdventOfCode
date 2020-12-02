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

extension String {
    func split(usingRegex pattern: String) -> [String] {
        let regex = try! NSRegularExpression(pattern: pattern)
        let matches = regex.matches(in: self, range: NSRange(0..<utf16.count))
        let ranges = [startIndex..<startIndex] + matches.map{Range($0.range, in: self)!} + [endIndex..<endIndex]
        return (0...matches.count).map {String(self[ranges[$0].upperBound..<ranges[$0+1].lowerBound])}
    }
}
