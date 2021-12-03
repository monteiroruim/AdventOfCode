//
//  TwentyOneDay03.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 02.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay03 {
    
    private var input: [String] = In2021D03().getInput().components(separatedBy: CharacterSet.newlines)
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        
        var bitsZero: [Int : Int] = [:]
        var bitsOne: [Int : Int] = [:]
        let size = input[0].count
        
        for pos in 0..<size {
            var countOne = 0
            var countZero = 0
            for (_, line) in input.enumerated() {
                (line[pos] == "0") ? (countZero = countZero + 1) : (countOne = countOne + 1 )
            }
            if (countOne > countZero) {
                bitsZero[pos] = 0
                bitsOne[pos] = 1
            } else {
                bitsZero[pos] = 1
                bitsOne[pos] = 0
            }
        }
        
        var final = ""
        var finalInvert = ""
        for val in 0..<size {
            final = final + String(bitsZero[val]!)
            finalInvert = finalInvert + String(bitsOne[val]!)
        }
        return Int((strtoul(final, nil, 2) * strtoul(finalInvert, nil, 2)))
    }
    
    private func bitExtractor(bits: [String], mode: Int) -> Int {
        
        var tempBitsOne: [String] = []
        var returnValue = ""
        var input = bits
        let size = input[0].count
        
        for pos in 0..<size-1 {
            var countOne = 0
            var countZero = 0
            for (_, line) in input.enumerated() {
                (line[pos] == "0") ? (countZero = countZero + 1) : (countOne = countOne + 1 )
            }
            if (countOne >= countZero) { // select lines with 1s or 0s
                for (_, line) in input.enumerated() {
                    if (mode == 1) {
                        (line[pos].starts(with: "1")) ? tempBitsOne.append(line) : nil
                    } else {
                        (line[pos].starts(with: "0")) ? tempBitsOne.append(line) : nil
                    }
                }
            } else {
                for (_, line) in input.enumerated() {
                    if (mode == 1) {
                        (line[pos].starts(with: "0")) ? tempBitsOne.append(line) : nil
                    } else {
                        (line[pos].starts(with: "1")) ? tempBitsOne.append(line) : nil
                    }
                }
            }
            if (tempBitsOne.count > 1) {
                input.removeAll()
                input = tempBitsOne
                tempBitsOne.removeAll()
            }
        }
        (input[0].last == "1") ? (returnValue = input[0]) : (returnValue = input[1])
        return Int((strtoul(returnValue, nil, 2)))
    }
    
    private func PartTwo() -> Int {
        
        let oxygenGeneratorRating = bitExtractor(bits: input, mode: 1)
        let CO2ScrubberRating = bitExtractor(bits: input, mode: 0)
        //print(oxygenGeneratorRating, CO2ScrubberRating)
        return (oxygenGeneratorRating * CO2ScrubberRating)
    }
    
    private func Tests() {
        assert(PartOne() == 3885894, "OK")
        assert(PartTwo() == 4375225, "OK")
    }
    
}
