//
//  TwentyTwoDay13.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 08.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay13 {
    
    private var input: String
    
    public init() {
        
        self.input = In2022D13().getInput()
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    
    func PartOne() -> Int {
        return 1
    }
    
    private func PartTwo() -> Int {
        return 1
    }
    
    private func Tests() {
        assert(PartOne() == 0, "Part 1 KO")
        assert(PartTwo() == 0, "Part 2 KO")
    }
    
}
