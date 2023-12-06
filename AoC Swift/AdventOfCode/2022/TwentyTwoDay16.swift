//
//  TwentyTwoDay16.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 30.11.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation
import Algorithms

class TwentyTwoDay16 {

    private var input: [String]
    
    public init() {
        self.input = In2022D16().getInput().components(separatedBy: "\n")
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {
        1
    }
    
    private func PartTwo() -> Int {
        2
    }

    private func Tests() {
        assert(PartOne() == 0, "PartOne KO")
        assert(PartTwo() == 0, "PartTwo KO")
    }
    
}
