//
//  TwentyOneDay02.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 01.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay02 {
    
    private var input: [String]
    
    public init() {
        
        input = In2021D02().getInput().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }

    private func PartOne() -> Int {
        
        var horizontalPosition = 0
        var depth = 0
        
        for i in input {
            let pos = i.components(separatedBy: " ")
            
            if (pos[0].starts(with: "f")) {
                horizontalPosition = horizontalPosition + Int(pos[1])!
            } else if (pos[0].starts(with: "d")) {
                depth = depth + Int(pos[1])!
            } else {
                depth = depth - Int(pos[1])!
            }
        }
        return horizontalPosition * depth
    }
    
    private func PartTwo() -> Int {
        var aim = 0
        var horizontalPosition = 0
        var depth = 0
        
        for i in input {
            let pos = i.components(separatedBy: " ")
            
            if (pos[0].starts(with: "f")) {
                horizontalPosition = horizontalPosition + Int(pos[1])!
                depth = depth + (aim * Int(pos[1])!)
            } else if (pos[0].starts(with: "d")) {
                aim = aim + Int(pos[1])!
            } else {
                aim = aim - Int(pos[1])!
            }
        }
        
        return horizontalPosition * depth
    }

    private func Tests() {
        assert(PartOne() == 1855814, "OK")
        assert(PartTwo() == 1845455714, "OK")
    }
    
}
