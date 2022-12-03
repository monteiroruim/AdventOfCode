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
    
    private var input = In2015D09().inputDebug.components(separatedBy: CharacterSet.newlines)
    private var uniqueCities: Set<String>
    
    public init() {
        
        self.uniqueCities = Set<String>()
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {
        
        var min = Int.max
        
        for i in input {
            let line = i.components(separatedBy: CharacterSet.whitespaces)
            let origin = line[0]
            let destination = line[1]
            uniqueCities.insert(origin)
            uniqueCities.insert(destination)
            //let cost = line[4]
        }
        //print("Unique:", uniqueCities)
        
        for perm in uniqueCities.uniquePermutations() {
            print(perm)
        }
                
        return min
        // 207
        // 764
    }
    
    private func PartTwo() -> Int {
        0
    }
    
    private func Tests() {
        assert(PartOne() == 0, "Failed at PartOne")
        assert(PartTwo() == 0, "Failed at PartTwo")
    }
    
}
