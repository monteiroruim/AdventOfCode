//
//  TwentyTwoDay10.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 08.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation
import Algorithms
import Collections
import Foundation

class TwentyTwoDay10 {
    
    private var input: [String]
    
    public init() {
        
        self.input = In2022D10().getInput().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    func PartOne() -> Int {
        var register = 1
        var totalSum = 0
        var cycle = 0
        
        func addToCycleNum() {
            cycle += 1
            if (cycle - 20).quotientAndRemainder(dividingBy: 40).remainder == 0 {
                totalSum += register * cycle
            }
        }
    
        for l in self.input {
            let line = l.components(separatedBy: " ")
            let op = String(line.first!)
            let amount = Int(line.last!)
            
            addToCycleNum()
            if op.hasPrefix("addx") {
                addToCycleNum()
                register += amount ?? 0
            }
            
        }
        return totalSum
    }
    
    private func PartTwo() -> Int {
        
        var register = 1
        var cycle = 0
        var CRT = ""
        
        func addToImage() {
            cycle += 1
            if (register...register+2).contains(cycle % 40) {
                CRT += "#"
            } else { CRT += " " }
            if cycle % 40 == 0 { CRT += "\n" }
        }

        for l in self.input {
            let line = l.components(separatedBy: " ")
            let op = String(line.first!)
            let amount = Int(line.last!)

            addToImage()
            if op.hasPrefix("addx") {
                addToImage()
                register += amount ?? 0
            }

        }
        print(CRT)
        return 0
    }
        
    private func Tests() {
        assert(PartOne() == 17020, "Part 1 KO")
        assert(PartTwo() == 0, "Part 2 KO")
    }
    
}
