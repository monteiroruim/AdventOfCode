//
//  FifteenDay08.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 29.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class FifteenDay08 {
    
    private var lines = [String]()
    private var file: String
    private var codeCount = 0
    private var encodedCount = 0
    private var memoryCount = 0
    
    public init() {
        
        self.file = "/Users/pereiro2/Developer/AdventOfCode/AoC Swift/AdventOfCode/2015/Input2015Day08.txt"
        do {
            let f = try String(contentsOfFile: file).trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
            self.lines = f.components(separatedBy: CharacterSet.newlines)
        } catch {
            print(error)
        }
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
    }
    
    private func PartOne() -> Int{
        
        codeCount = 0
        memoryCount = 0
        
        for line in lines {
            codeCount += line.count
            
            var i = line.index(line.startIndex, offsetBy: 1);
            let endIndex = line.index(before: line.endIndex)
            
            while i < endIndex {
                let c = line[i]
                
                if (c == "\\") {
                    i = line.index(after: i)
                    let c2 = line[i]
                    if (c2 == "x") {
                        memoryCount += 1
                        i = line.index(i, offsetBy: 3)
                    } else {
                        memoryCount += 1
                        i = line.index(after: i)
                    }
                } else {
                    memoryCount += 1
                    i = line.index(after: i)
                }
            }
        }
        
        //print("code:", codeCount)
        //print(" mem:", memoryCount)
        return (codeCount-memoryCount)
    }
    
    private func PartTwo() -> Int{
        
        self.codeCount = 0
        self.encodedCount = 0
        
        for line in lines {
            codeCount += line.count
            encodedCount += 6 // new end quotes, escaped original end quotes
            
            var i = line.index(line.startIndex, offsetBy: 1);
            let endIndex = line.index(before: line.endIndex)
            
            while i < endIndex {
                let c = line[i]
                
                if (c == "\\") {
                    encodedCount += 2
                    i = line.index(after: i)
                    let c2 = line[i]
                    if (c2 == "x") {
                        encodedCount += 3
                        memoryCount += 1
                        i = line.index(i, offsetBy: 3)
                    } else {
                        encodedCount += 2
                        memoryCount += 1
                        i = line.index(after: i)
                    }
                } else {
                    memoryCount += 1
                    encodedCount += 1
                    i = line.index(after: i)
                }
            }
        }
        
        //print("encoded:", encodedCount)
        //print("   code:", codeCount)
        return encodedCount - codeCount
    }
    
}
