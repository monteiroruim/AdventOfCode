//
//  fiftteenDayOne.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 03.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class fiftteenDay01 {
    
    private let input = In2015D01().input
    
    init() {
        partOne()
    }
    
    private func partOne() {
        
        var sum = 0
        self.input.forEach { char in
            (char == "(") ? (sum+=1) : (sum-=1) // $0 == "("
        }
        print("Result Part 1: \(sum)")
    
        sum = 0
        for (i, element) in input.enumerated() { // part 2
            (element == "(") ? (sum+=1) : (sum-=1)

            if (sum == -1) {
                print("Result Part 2: \(i+1)")
                break
            }
        }
    }
    
}
