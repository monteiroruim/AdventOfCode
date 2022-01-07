//
//  FifteenDay06.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 23.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class FifteenDay06 {
    
    private var matrixPartOne = Array(repeating: Array(repeating: 0, count: 1000), count: 1000)
    private var input = [Substring]()
    private var brightness = 0
    
    init() {
        self.input = In2015D06().input.split(separator: "\n")
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(self.brightness)")
    }
    
    public func matrixOperations(operation: String, startXX: Int, startYY: Int, endXX: Int, endYY: Int) {
        
        for i in startXX...endXX {
            for j in startYY...endYY {
                
                if (operation == "on") {
                    matrixPartOne[i][j] = 1
                    brightness += 1
                } else if (operation == "off") {
                    matrixPartOne[i][j] = 0
                    brightness -= 1
                } else {
                    (matrixPartOne[i][j] == 1) ? (matrixPartOne[i][j] = 0) : (matrixPartOne[i][j] = 1)
                    brightness += 2
                }
                
            }
        }
        
    }
    
    public func countMatrix() -> Int {
        var total = 0
        for i in 0...999 {
            for j in 0...999 {
                if (matrixPartOne[i][j] == 1) {
                    total = total + 1
                }
            }
        }
        return total
    }
    
    private func PartOne() -> Int {
        
        for i in self.input {
            if (i.starts(with: "turn on")) {
                let s = i.components(separatedBy: "turn on ")
                let ss = s[1].components(separatedBy: " through ")
                let start = ss[0].split(separator: ",").compactMap{ Int($0) }
                let end = ss[1].split(separator: ",").compactMap{ Int($0) }
                matrixOperations(operation: "on", startXX: start[0], startYY: start[1], endXX: end[0], endYY: end[1])
            }
            if (i.starts(with: "turn off ")){
                let s = i.components(separatedBy: "turn off ")
                let ss = s[1].components(separatedBy: " through ")
                let start = ss[0].split(separator: ",").compactMap{ Int($0) }
                let end = ss[1].split(separator: ",").compactMap{ Int($0) }
                matrixOperations(operation: "off", startXX: start[0], startYY: start[1], endXX: end[0], endYY: end[1])
            }
            if (i.starts(with: "toggle")) {
                let s = i.components(separatedBy: "toggle ")
                let ss = s[1].components(separatedBy: " through ")
                let start = ss[0].split(separator: ",").compactMap{ Int($0) }
                let end = ss[1].split(separator: ",").compactMap{ Int($0) }
                matrixOperations(operation: "tog", startXX: start[0], startYY: start[1], endXX: end[0], endYY: end[1])
            }
        }
        return countMatrix()
    }
    
}
