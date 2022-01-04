//
//  Utils.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 12.12.19.
//  Copyright © 2019 Pereira Orlando. All rights reserved.
//

import Foundation

extension Array {
    func decompose() -> (Iterator.Element, [Iterator.Element])? {
        guard let x = first else { return nil }
        return (x, Array(self[1..<count]))
    }
}

func between<T>(x: T, _ ys: [T]) -> [[T]] {
    guard let (head, tail) = ys.decompose() else { return [[x]] }
    return [[x] + ys] + between(x:x, tail).map { [head] + $0 }
}

@available (macOS 10.15, * )
extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}

// Extract the Int value from the string L1010,D347,...
extension Int {
    static func parseIntFromString(from string: String) -> Int? {
        return Int(string.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
    }
}

extension String {
    func splitUsingRegex(usingRegex pattern: String) -> [String] { // have deps at LugaggeProcessing
        let regex = try! NSRegularExpression(pattern: pattern)
        let matches = regex.matches(in: self, range: NSRange(0..<utf16.count))
        let ranges = [startIndex..<startIndex] + matches.map{Range($0.range, in: self)!} + [endIndex..<endIndex]
        return (0...matches.count).map {String(self[ranges[$0].upperBound..<ranges[$0+1].lowerBound])}
    }
    
    var isNumericalOnly: String {
        let pattern = UnicodeScalar("0")..."9"
        return String(unicodeScalars.compactMap { pattern ~= $0 ? Character($0) : nil })
    }
    var isLettersOnly: String {
        let pattern = UnicodeScalar("a")..."z"
        return String(unicodeScalars.compactMap { pattern ~= $0 ? Character($0) : nil })
    }
    var isLettersSubSetOnly: String {
        let pattern = UnicodeScalar("a")..."f"
        return String(unicodeScalars.compactMap { pattern ~= $0 ? Character($0) : nil })
    }
}
