//
//  Day14DockingData.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 16.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class DockingData {
    
    var program = Input2020d14.d14DockingData.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .newlines)
    
    init() {
        partOne(data: self.program)
        partTwo(data: self.program)
    }
    
    func OR(from mask: String) -> UInt64 {
        return UInt64(mask.replacingOccurrences(of: "X", with: "0"), radix: 2)!
    }
    
    func AND(from mask: String) -> UInt64 {
        return UInt64(mask.replacingOccurrences(of: "X", with: "1"), radix: 2)!
    }
    
    func partTwo(data: [String]) {
        var currentMask = ""
        var mem: [Int64: Int64] = [:]
        
        data.forEach { line in
            
            let parts = line.components(separatedBy: " = ")
            let memoryAddress = parts[0]
            
            if (memoryAddress == "mask") {
                currentMask = String(parts[1].reversed())
            } else {
                
                let memoryAddress = Int64(parts[0].split(separator: "[")[1].dropLast())!
                let memoryValue = Int64(parts[1])!
                
                for i in 0..<(1 << currentMask.filter { $0 == "X" }.count) {
                    var memAddr = memoryAddress
                    var xIdx = 0
                    
                    for (idx, char) in currentMask.enumerated() {
                        if char == "0" {
                            continue
                        } else if char == "1" {
                            memAddr |= (1 << idx)
                        } else if char == "X" {
                            if (i & (1 << xIdx)) == 0 {
                                memAddr &= ~(1 << idx)
                            } else {
                                memAddr |= (1 << idx)
                            }
                            xIdx += 1
                        }
                    }
                    mem[memAddr] = memoryValue
                }
            }
        }
        
        var result = 0
        for (_, elem) in mem.enumerated() {
            result += Int(elem.value)
        }
        print("Part 2 answer: \(result)")
    }
    
    func partOne(data: [String]) {
        var staticOrMask: UInt64 = 0
        var staticAndMask: UInt64 = 0
        var registers = [String: UInt64]()
        
        data.forEach { line in
            let parts = line.components(separatedBy: " = ")
            
            let memoryAddress = parts[0]
            let value = parts[1]
            
            if (memoryAddress == "mask") {
                staticOrMask = OR(from: value)
                staticAndMask = AND(from: value)
            } else {
                let result = (UInt64(value)! | staticOrMask) & staticAndMask // any order
                registers[memoryAddress] = result
            }
        }
        
        var result = 0
        for (_, elem) in registers.enumerated() {
            result += Int(elem.value)
        }
        print("Part 1 answer: \(result)")
    }
    
}
