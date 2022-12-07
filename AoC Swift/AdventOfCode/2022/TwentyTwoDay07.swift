//
//  TwentyTwoD06.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 05.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay07 {
    
    private var input: [String]
    
    public init() {
        
        self.input = In2022D07().getInput().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartOne() )")
        //Tests()
    }
    
    private func PartOne() -> Int {
        
        var sum = 0
        
        return sum
    }

    private func Tests() {
        assert(PartOne() == 1848, "Part 1 KO")
        assert(PartOne() == 2308, "Part 2 KO")
    }
    
}
