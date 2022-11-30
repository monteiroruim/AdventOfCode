//
//  TwentyOneDay06.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 07.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay06 {
    
    private var input: [Int] = In2021D06().getInput().split(separator: ",").map{ Int($0)! }
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    // Works, but both time and space complexity is huge O(256 * N)
    private func lanternfishDeprecated(day: Int) -> Int {
        
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
    
    func lanternfishPerformance(days: Int) -> Int {
        /*
         total # of fish per timer
         reducing complexity to O(256 * 9)
         [3, 4, 3, 1, 2] transformed to
         [4: 1, 2: 1, 1: 1, 3: 2]
         */
        var fish = input.reduce(into: [Int: Int]()) { d, i in
            d[i, default: 0] += 1
        }
    
        for _ in 0..<days {
            let newFish = fish[0, default: 0]
            for i in 1..<9 {
                fish[i - 1] = fish[i, default: 0]
            }
            fish[6, default: 0] += newFish
            fish[8] = newFish
        }

        return fish.values.reduce(0,+)
    }
    
    private func PartOne() -> Int {
        let days = 80
        return lanternfishPerformance(days: days)
    }
    
    private func PartTwo() -> Int {
        
        input = In2021D06().getInput().split(separator: ",").map{ Int($0)! }
        
        let days = 256
        return lanternfishPerformance(days: days)
    }

    private func Tests() {
        assert(PartOne() == 390011, "OK")
        assert(PartTwo() == 1746710169834, "OK")
    }
    
}
