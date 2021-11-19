//
//  fiftteenDayOne.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 03.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class fiftteenDay01 {
    
    let input: String
    
    init() {
        self.input = Inputs2015.DayOne
        partOne()
    }
    
    func partOne() {
        
        var sum=0
        var position = 0
        for (i, element) in input.enumerated() {
            
            (element == "(") ? (sum+=1) : (sum-=1)
            (sum == -1 && position == 0) ? (position = i+1) : nil
            
        }
        print("Result Part 1: \(sum)")
        print("Result Part 2: \(position)")
    }
}
