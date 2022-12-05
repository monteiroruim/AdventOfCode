//
//  FifteenDay09.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 29.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation
import Algorithms

class FifteenDay09 {
    
    private var input = In2015D09().input.components(separatedBy: CharacterSet.newlines)
    private var uniqueCities: Set<String>
    private var costs: [String: Int]
    
    public init() {
        
        self.uniqueCities = Set<String>()
        self.costs = [String: Int]()
        
        print("puzzle answer (part 1): \(PartOne().0)")
        print("puzzle answer (part 2): \(PartOne().1)")
        Tests()
    }
    
    private func PartOne() -> (Int, Int) {
        
        var min = Int.max
        var max = 0
        
        for i in input {
            let line = i.components(separatedBy: CharacterSet.whitespaces)
            let origin = line[0]
            let destination = line[1]
            uniqueCities.insert(origin)
            uniqueCities.insert(destination)
            let cost = Int(line[2])!
            self.costs[origin + " " + destination] = cost
        }
        
        for perm in uniqueCities.uniquePermutations() {
            var cost = 0
            for i in 1..<perm.count {
                let start = perm[i-1]
                let end = perm[i]
                
                if (self.costs[start + " " + end] ?? 0) != 0 {
                    cost += self.costs[start + " " + end] ?? 0
                } else {
                    cost += self.costs[end + " " + start] ?? 0
                }
            }
            if cost < min { min = cost }
            if cost > max { max = cost}
        }
        
        return (min, max)
    }
    
    private func Tests() {
        assert(PartOne().0 == 207, "Failed at PartOne")
        assert(PartOne().1 == 804, "Failed at PartTwo")
    }
    
}
