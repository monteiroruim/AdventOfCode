//
//  TwentyTwoDay01.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 30.11.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation
import Algorithms

class TwentyTwoDay01 {
    
    private var input: [String]
    private var totalCalories: [Int]
    
    public init() {
        self.input = In2022D01().getInput().components(separatedBy: "\n\n")
        totalCalories = self.input.map { line in
            line
                .components(separatedBy: CharacterSet.newlines)
                .map{ Int($0)! }
                .reduce(0, +)
        }
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {
        
        // Idiomatic swift
        return totalCalories.max()!
        
        // non idiomatic
//        var max = 0
//        for i in totalCalories {
//            if i > max { max = i }
//        }
//        return(max)
    }
    
    private func PartTwo() -> Int {
        
        // idiomatic swift
        return totalCalories.sorted(by: >).prefix(3).reduce(0, +)
        
//        var max = 0
//        let calSorted = totalCalories.sorted(by: >)
//        for i in 0...2 {
//            max += calSorted[i]
//        }
//        return(max)
    }

    private func Tests() {
        assert(PartOne() == 69795, "PartOne KO")
        assert(PartTwo() == 208437, "PartTwo KO")
    }
    
}
