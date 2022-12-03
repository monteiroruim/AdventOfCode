//
//  File.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 03.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

extension Character {
    var priority: Int {
        Int(asciiValue! - (isUppercase ? 38 : 96))
    }
}

class TwentyTwoDay03 {
    
    private var input: [String]
    
    public init() {
        
        self.input = In2022D03().getInputDebug().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {

        var sum = 0
        for i in self.input {
            var left = 0
            var right = i.count / 2
            
            while left < right {
                if i[left] == i[right] {
                    let c = Character(i[left])
                    if c.asciiValue! >= 97 && c.asciiValue! <= 122 {
                        sum += Int(c.asciiValue!)-96
                    } else {
                        sum += Int(c.asciiValue!)-64+26
                    }
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
        
        let lines = In2022D03().getInput().split(separator: "\n")
        
        var array = lines.chunks(ofCount: 3).map(Array.init).map { group -> Int in
            for character in group[0] {
                if group[1].contains(character) && group[2].contains(character) {
                    return Array(" abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").firstIndex(of: character)!
                }
            }

            fatalError()
        }

        var sum = 0
        for i in array {
            sum += i
        }
        
        return sum
    }

    private func Tests() {
        assert(PartOne() == 0, "PartOne KO")
        assert(PartTwo() == 0, "PartTwo KO")
    }
    
}
