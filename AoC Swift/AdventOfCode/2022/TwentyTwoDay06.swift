//
//  TwentyTwoD06.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 05.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay06 {
    
    private var input: [String]
    
    public init() {
        
        self.input = In2022D06().getInput().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne(4))")
        print("puzzle answer (part 2): \(PartOne(14) )")
        Tests()
    }
    
    private func isUnique(_ subString: Substring) -> Bool {
        let s = subString.sorted()
        for i in 1..<s.count {
            if (s[i-1] == s[i]) {
                return true
            }
        }
        return false
    }
    
    private func PartOne(_ windowSize: Int) -> Int {
        var sum = 0
        for i in self.input {
            let sequences = i.windows(ofCount: windowSize)
            for j in sequences {
                if !isUnique(j) {
                    break
                }
                sum += 1
            }
            sum += windowSize
        }
        return sum
    }

    private func Tests() {
        assert(PartOne(4) == 1848, "Part 1 KO")
        assert(PartOne(14) == 2308, "Part 2 KO")
    }
    
}
