//
//  TwentyOneDay07.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 08.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay07 {
    
    private var input: [Int] = In2021D07().getInput().split(separator: ",").map{
        Int($0)!
    }
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        let sizeInput = input.count
        var temp = 0
        var fuel = Int.max
        
        for i in 0..<sizeInput {
            for j in 0..<sizeInput {
                temp = temp + abs(input[i] - input[j])
            }
            (temp < fuel) ? fuel = temp : nil
            temp = 0
        }
        return fuel
    }
    
    func fuelCalculation(for distance: Int) -> Int {
            distance * (distance + 1) / 2
    }
    
    private func PartTwo() -> Int {
        let sizeInput = input.count
        var temp = 0
        var fuel = Int.max

        for i in 0..<sizeInput {
            for j in 0..<sizeInput {
                temp = temp + fuelCalculation(for: abs(input[i] - input[j]))
            }
            (temp < fuel) ? fuel = temp : nil
            temp = 0
        }

        return fuel

    }

    private func Tests() {
        assert(PartOne() == 351901, "OK")
        assert(PartTwo() == 101079875, "OK")
    }
    
}
