//
//  TwentyOneDay06.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 07.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay06 {
    
    private var input: [Int] = In2021D06().getInput().split(separator: ",").map{
        Int($0)!
    }
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
//        Tests()
    }
    
    private func lanternfish(day: Int) -> Int {
        
        let days = day
        for _ in 0...days-1 {
            for (i, _) in input.enumerated() {
                input[i] = input[i] - 1
                
                if (input[i] < 0) {
                    input[i] = 6
                    input.append(8)
                }
                
            }
        }
        return input.compactMap{$0}.count
    }
    
    private func PartOne() -> Int {
        let days = 80
        return lanternfish(day: days)
    }
    
    private func PartTwo() -> Int {
        let days = 256
        input = In2021D06().getInput().split(separator: ",").map{
            Int($0)!
        }
        return lanternfish(day: days)
    }

    private func Tests() {
        assert(PartOne() == 0, "OK")
        assert(PartTwo() == 0, "OK")
    }
    
}
