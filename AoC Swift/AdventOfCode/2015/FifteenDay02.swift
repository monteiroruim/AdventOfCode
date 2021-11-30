//
//  fiftteenDayTwo.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 03.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class fifteenDay02 {
    
    var boxesSizes: [String]
    let separator: String
    var l: Int
    var w: Int
    var h: Int
    var sum: Int
    
    init() {
        self.boxesSizes = In2015D02.DayTwo
        self.separator = "x"
        self.l = 0
        self.w = 0
        self.h = 0
        self.sum=0
        partOne()
        partTwo()
    }
    
    func partOne() {
        sum = 0
        
        for i in self.boxesSizes {
            let result = i.split(usingRegex: separator).compactMap{ Int($0) }.sorted()
            
            l = result[0]
            w = result[1]
            h = result[2]
            
            let size = (2*l*w) + (2*w*h) + (2*h*l) + (l*w)
            sum += size
        }
        print("Result Part 1: \(sum)")
    }
 
    func partTwo() {
        sum = 0
        
        for i in self.boxesSizes {
            let result = i.split(usingRegex: separator).compactMap{ Int($0) }.sorted()
            
            l = result[0]
            w = result[1]
            h = result[2]
            
            let ribbonFeet = l+l+w+w
            let ribbonBow = l*w*h
            sum += ribbonFeet+ribbonBow
        }
        print("Result Part 2: \(sum)")
    }    
}
