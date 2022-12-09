//
//  TwentyTwoDay09.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 08.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay09 {
    
    private var input: [String]
    
    public init() {
        
        self.input = In2022D09().getInputDebug().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {
        
        var matSize = 10
        var visited = Array(repeating: Array(repeating: 0, count: matSize), count: matSize)
        
        
        return 0
    }
    
    private func PartTwo() -> Int {
        return 0
    }

    private func Tests() {
        assert(PartOne() == 0, "Part 1 KO")
        assert(PartTwo() == 0, "Part 2 KO")
    }
    
}
