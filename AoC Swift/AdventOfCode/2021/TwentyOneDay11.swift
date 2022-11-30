//
//  TwentyOneDay11.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 14.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay11 {
    
    let input = In2021D11().getInput()
        .split(separator: "\n")
        .enumerated()
        .reduce(into: [Point: Int]()) { dict, tuple in
            let (y, line) = tuple
            line.enumerated().forEach { x, char in
                dict[Point(x: x, y: y)] = char.wholeNumberValue!
            }
        }
    
    struct Point: Hashable {
        var x: Int
        var y: Int
        
        var neighbours: Set<Point> {
            var all = Set(
                ((x - 1)...(x + 1)).flatMap { x in
                    ((y - 1)...(y + 1)).map { y in
                        Point(x: x, y: y)
                    }
                }
            )
            all.remove(self)
            return all
        }
    }

    private func advance(_ octopuses: inout [Point: Int]) {
        octopuses = octopuses.mapValues { $0 + 1 }
        
        var newlyFlashed = Set(octopuses.filter({ $0.value > 9 }).keys)
        var flashed = newlyFlashed
        
        while !newlyFlashed.isEmpty {
            newlyFlashed.forEach {
                $0.neighbours.forEach { octopuses[$0]? += 1 }
            }
            newlyFlashed = Set(octopuses.filter({ $0.value > 9 }).keys).subtracting(flashed)
            flashed.formUnion(newlyFlashed)
        }
        
        flashed.forEach { octopuses[$0] = 0 }
    }
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        var octopuses = input
        
        var score = 0
        for _ in 1 ... 100 {
            advance(&octopuses)
            score += octopuses.lazy.filter({ $0.value == 0 }).count
        }
        
        return Int(score.description)!
    }
    
    private func PartTwo() -> Int {
        var octopuses = input
        
        for step in 1... {
            advance(&octopuses)
            let score = octopuses.lazy.filter({ $0.value == 0 }).count
            if score == 100 {
                return Int(step.description)!
            }
        }
        
        fatalError("Error")
    }

    private func Tests() {
        assert(PartOne() == 1749, "PartOne KO")
        assert(PartTwo() == 285, "PartTwo KO")
    }
    
}
