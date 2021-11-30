//
//  FifteenDay09.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 29.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class FifteenDay09 {
    
    private var input = In2015D09().getInstructionsDebug().components(separatedBy: CharacterSet.newlines)
    
    public init() {
        
        for i in input {
            let line = i.components(separatedBy: CharacterSet.whitespaces)
            let origin = line[0]
            let destination = line[2]
            let cost = line[4]
            print(line, origin, destination, cost)
        }
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        0
    }
    
    private func PartTwo() -> Int {
        0
    }
    
    private func Tests() {
        assert(PartOne() == 0, "Failed at PartOne")
        assert(PartTwo() == 0, "Failed at PartTwo")
    }
    
}
