//
//  TwentyOneDay10.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 10.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay10 {
    
    private var input: [String] = In2021D10().getInput().trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .newlines)
    private var matches: [Character: Character] = ["(": ")", "[": "]", "{": "}", "<": ">"]
    private var scores: [Character: Int] = [")": 3, "]": 57, "}": 1197, ">": 25137]
    private var values: [Character: Int] = [")": 1, "]": 2, "}": 3, ">": 4]
    var opening: Set<Character> = ["(", "{", "[", "<"]
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {
        var points = 0
        
        var stack = [Character]()
        for (_, line) in input.enumerated() {
            for i in 0..<line.count {
                if let match = matches[Character(line[i])] {
                    stack.append(match)
                } else if stack.last == Character(line[i]) {
                    stack.removeLast()
                } else {
                    points = points + scores[Character(line[i]), default: 0]
                    break
                }
            }
        }
        return points
    }
    
    private func PartTwo() -> Int {

        let scores = input.compactMap { line -> Int? in
            var stack: [Character] = []
                    
            for char in line {
                if opening.contains(char) {
                    stack.append(char)
                } else {
                    if self.matches[stack.removeLast()]! != char {
                        return nil
                    }
                }
            }
                    
            return stack.reversed()
                .lazy
                .map { self.matches[$0]! }
                .map { self.values[$0]! }
                .reduce(0, { $0 * 5 + $1 })
        }.sorted()
            
        let middle = scores.count / 2
        return Int(scores[middle].description)!
    }

    private func Tests() {
        assert(PartOne() == 26397, "PartOne KO")
        assert(PartTwo() == 0, "PartTwo KO")
    }
    
}
