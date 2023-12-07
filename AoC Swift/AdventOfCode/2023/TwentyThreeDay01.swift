//
//  TwentyThreeDay01.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 06.12.23.
//  Copyright © 2023 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyThreeDay01 {
    
    private var input: [String] = In2023D01().getInput().components(separatedBy: .whitespacesAndNewlines)

    private let search = [
        "one", "two", "three", "four", "five", "six", "seven", "eight", "nine",
        "1", "2", "3", "4", "5", "6", "7", "8", "9"
    ]
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {

        var sum = 0
        let _ = self.input.map { line in
            let i = line.isNumericalOnly
            sum += Int("\(i.first!)\(i.last!)")!
        }
        
        return sum
    }
    
    private func PartTwo() -> Int {
        
        var sum = 0
        let _ = self.input.map{ line in
            let first = firstNumber(line: line)
            let last = lastNumber(line: line)
            sum += first * 10 + last
        }
        return sum
    }

    private func valueFor(_ index: Int) -> Int {
        index < 9 ? index + 1 : index - 8
    }
    
    private func firstNumber(line: String) -> Int {
        var line = line
        while !line.isEmpty {
            for (index, str) in search.enumerated() {
                if line.hasPrefix(str) {
                    return valueFor(index)
                }
            }
            line.removeFirst()
        }
        fatalError()
    }
    
    private func lastNumber(line: String) -> Int {
        var line = line
        while !line.isEmpty {
            for (index, str) in search.enumerated() {
                if line.hasSuffix(str) {
                    return valueFor(index)
                }
            }
            line.removeLast()
        }
        fatalError()
    }
    
    private func Tests() {
        assert(PartOne() == 53921, "Part 1 KO")
        assert(PartTwo() == 54676, "Part 2 KO")
    }
    
}
