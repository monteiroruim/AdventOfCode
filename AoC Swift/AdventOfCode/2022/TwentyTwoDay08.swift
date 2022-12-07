//
//  TwentyTwoDay08.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 07.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay08 {
    
    private var input: [String]
    
    public init() {
        
        self.input = In2022D08().getInputDebug().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {
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
