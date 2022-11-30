//
//  TwentyOneDay05.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 07.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay05 {
    
    private struct Point : Hashable {
        var x: Int
        var y: Int
        
        init(x: Int, y: Int) {
            self.x = x
            self.y = y
        }
    }
    
    private struct Line {
        var a: Point
        var b: Point
        
        var isHorizontalOrVertical: Bool {
            return a.x == b.x || a.y == b.y
        }
        
        var points: [Point] {
            if a.x == b.x {
                return (min(a.y, b.y) ... max(a.y, b.y)).map { Point(x: a.x, y: $0) }
            } else if a.y == b.y {
                return (min(a.x, b.x) ... max(a.x, b.x)).map { Point(x: $0, y: a.y) }
            } else {
                let diff = abs(a.x - b.x)
                let xIncreases = b.x > a.x
                let yIncreases = b.y > a.y
                return (0 ... diff).map { i in
                    return Point(
                        x: a.x + (xIncreases ? i : -i),
                        y: a.y + (yIncreases ? i : -i)
                    )
                }
            }
        }
    }
    
    private var input = In2021D05().getInput().split(separator: "\n").map { line -> Line in
        let numbers = line.split { "0123456789".contains($0) == false }.map { Int($0)! }
        
        return Line(
            a: Point(x: numbers[0], y: numbers[1]),
            b: Point(x: numbers[2], y: numbers[3])
        )
    }
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {
        var points: [Point: Int] = [:]
    
        input.filter(\.isHorizontalOrVertical).forEach { line in
            line.points.forEach {
                points[$0, default: 0] += 1
            }
        }
            
        return Int( points.lazy.filter({ $0.value >= 2 }).count.description )!
    }
    

    private func PartTwo() -> Int {
        var points: [Point: Int] = [:]
            
        input.forEach { line in
            line.points.forEach {
                points[$0, default: 0] += 1
            }
        }
            
        return Int( points.lazy.filter({ $0.value >= 2 }).count.description )!
    }

    private func Tests() {
        assert(PartOne() == 0, "OK")
        assert(PartTwo() == 0, "OK")
    }
    
}
