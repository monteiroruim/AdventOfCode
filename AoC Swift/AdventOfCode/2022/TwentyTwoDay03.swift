//
//  File.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 03.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay03 {
    
    private var input: [String]
    
    public init() {
        
        self.input = In2022D03().getInput().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {

        var sum = 0
        for i in self.input {
            var left = 0
            var right = i.count / 2
            
            while left < right {
                if i[left] == i[right] {
                    let c = Character(i[left])
                    sum += Int(c.asciiValue!) - (c.isUppercase ? (64-26) : 96)
                    break
                }
                right += 1
                if (right == i.count) {
                    left += 1
                    right = i.count / 2
                }
            }
        }
        return sum
    }
    
    private func PartTwo() -> Int {
        
        var sum = 0
        var left = 0
        let right = self.input.count
        
        while left < right {
            for c in input[left] {
                if input[1+left].contains(c) && input[2+left].contains(c){
                    sum += Int(c.asciiValue!) - (c.isUppercase ? (64-26) : 96)
                    break
                }
            }
            left += 3
        }

        return sum
    }

    private func Tests() {
        assert(PartOne() == 7691, "Part One KO")
        assert(PartTwo() == 2508, "Part Two KO")
    }
    
}
