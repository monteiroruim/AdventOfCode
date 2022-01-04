//
//  fiftteenDayTwo.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 03.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class fifteenDay02 {
    
    private var sizes = In2015D02().input.split(separator: "\n").map{ line in
        line.components(separatedBy: "x").map{ Int($0)! }
    }
    
    init() {
        PartOneAndTwo()
    }
    
    private func PartOneAndTwo() {
        var totalPaper = 0
        var totalRibbon = 0
        
        sizes.forEach{ s in
            totalPaper += 2*s[0]*s[1] + 2*s[1]*s[2] + 2*s[2]*s[0]
            
            let ss = s.sorted()
            totalPaper += ss[0]*ss[1]
            totalRibbon += ss[0]+ss[0]+ss[1]+ss[1] + ss[0]*ss[1]*ss[2]
        }
        print("Part One Result: \(totalPaper)\nPart Two Result: \(totalRibbon)")
    }

}
