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
//        Tests()
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
    
    /*
     [16, 1, 2, 0, 4, 2, 7, 1, 2, 14]
     
     the first step costs 1
     the second step costs 2
     the third step costs 3
     
     Move from 16 to 5: 66 fuel
     Move from 1 to 5: 10 fuel
     Move from 2 to 5: 6 fuel
     Move from 0 to 5: 15 fuel
     Move from 4 to 5: 1 fuel
     Move from 2 to 5: 6 fuel
     Move from 7 to 5: 3 fuel
     Move from 1 to 5: 10 fuel
     Move from 2 to 5: 6 fuel
     Move from 14 to 5: 45 fuel
     
     168
     */
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
        assert(PartOne() == 0, "OK")
        assert(PartTwo() == 0, "OK")
    }
    
}
