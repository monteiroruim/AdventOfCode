//
//  TwentyOneDay17.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 21.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay17 {
    
    private var input = "target area: x=79..137, y=-176..-117"
    
    struct Point: Hashable {
        var x: Int
        var y: Int
        
        static var zero = Point(x: 0, y: 0)
    }
    
    public init() {
        let position = CalculatePosition()
        print("puzzle answer (part 1): \(position.0)")
        print("puzzle answer (part 2): \(position.1)")
        Tests()
    }
    
    
    private func CalculatePosition() -> (String, String) {
        let numbers = input.numbers
        let xRange = numbers[0] ... numbers[1]
        let yRange = numbers[2] ... numbers[3]

        var maxY = Int.min
        var count = 0

        for xVelocity in 1 ... xRange.upperBound {
            for yVelocity in yRange.lowerBound ... 1000 {
                var position = Point.zero
                var velocity = Point(x: xVelocity, y: yVelocity)
                
                var localMaxY = Int.min
                
                while position.x <= xRange.upperBound, position.y >= yRange.lowerBound {
                    position.x += velocity.x
                    position.y += velocity.y
                    
                    velocity.x -= velocity.x.signum()
                    velocity.y -= 1
                    
                    localMaxY = max(localMaxY, position.y)
                    
                    if xRange.contains(position.x) && yRange.contains(position.y) {
                        maxY = max(maxY, localMaxY)
                        count += 1
                        break
                    }
                }
            }
        }

        return (maxY.description, count.description)
    }
    
    private func Tests() {
        let position = CalculatePosition()
        assert(position.0 == "15400", "PartOne KO")
        assert(position.1 == "5844", "PartTwo KO")
    }
    
}
