//
//  File.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 03.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay04 {
    
    private var input: [String]
    
    public init() {

        self.input = In2022D04().getInput().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne().0)")
        print("puzzle answer (part 2): \(PartOne().1)")
        Tests()
    }
    
    private func PartOne() -> (Int,Int) {
        
        var sumFullRange = 0
        var sumOverlap = 0
        for i in self.input {
            let r = i.components(separatedBy: "-").map{ Int($0)! }
            let range: ClosedRange<Int> = r[0]...r[1]
            let range2: ClosedRange<Int> = r[2]...r[3]
            
            // if one range fully contain the other
            if range.contains(range2.first!) && range.contains(range2.last!) || range2.contains(range.first!) && range2.contains(range.last!) {
                sumFullRange += 1
            }
            
            if range.overlaps(range2) { sumOverlap += 1 }
        }
        
        return (sumFullRange, sumOverlap)
    }
    
    private func Tests() {
        assert(PartOne().0 == 567, "PartOne KO")
        assert(PartOne().1 == 907, "PartTwo KO")
    }
    
}
