//
//  FifteenDay03.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 22.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class FifteenDay03 {
    
    private let input: String
    
    struct Point2D: Hashable {
        var x, y: Int
    }
    
    init() {
        self.input = In2015D03().input
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
    }
    
    func PartOne() -> Int {
        var deliveredPresents = Set<Point2D>()
        var x = 0, y = 0
        var point = Point2D(x: x, y: y)
        deliveredPresents.insert(point)
        
        input.forEach { element in
            if (element == "^") { y+=1 }
            if (element == ">") { x+=1 }
            if (element == "v") { y-=1 }
            if (element == "<") { x-=1 }
            
            point = Point2D(x: x, y: y)
            deliveredPresents.insert(point)
        }
        return deliveredPresents.count
    }

    func PartTwo() -> Int {
        var deliveredSantaPresents = Set<Point2D>()
        var xRobot = 0, yRobot = 0, xSanta = 0, ySanta = 0
        var point = Point2D(x: xRobot, y: yRobot)
        deliveredSantaPresents.insert(point)
        
        for (i, element) in input.enumerated() {
            if (i % 2 == 0) {
                if (element == "^") { ySanta+=1 }
                if (element == ">") { xSanta+=1 }
                if (element == "v") { ySanta-=1 }
                if (element == "<") { xSanta-=1 }
                point = Point2D(x: xSanta, y: ySanta)
            } else {
                if (element == "^") { yRobot+=1 }
                if (element == ">") { xRobot+=1 }
                if (element == "v") { yRobot-=1 }
                if (element == "<") { xRobot-=1 }
                point = Point2D(x: xRobot, y: yRobot)
            }
            deliveredSantaPresents.insert(point)
        }
        return deliveredSantaPresents.count
    }
    
}
