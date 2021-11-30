//
//  FifteenDay03.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 22.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

private struct Point2D {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
}

class FifteenDay03 {
    
    init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
    }
    
    private func PartOne() -> Int{
        
        var point = Point2D(x: 0, y: 0)
        var points = [Point2D]()
        points.append(point)
        
        for i in In2015D03.partOne {
            switch i { //^>v<
            case "^":
                point.y = point.y + 1
                if (!points.contains(where: {$0.y == point.y && $0.x == point.x} )) {
                    points.append(point)
                }
            case "v":
                point.y = point.y - 1
                if (!points.contains(where: {$0.y == point.y && $0.x == point.x} )) {
                    points.append(point)
                }
            case "<":
                point.x = point.x - 1
                if (!points.contains(where: {$0.y == point.y && $0.x == point.x} )) {
                    points.append(point)
                }
            case ">":
                point.x = point.x + 1
                if (!points.contains(where: {$0.y == point.y && $0.x == point.x} )) {
                    points.append(point)
                }
            default:
                print("NA")
            }
        }
        
        return points.count
        
    }
    
    private func PartTwo() -> Int{
        
        var point = Point2D(x: 0, y: 0)
        var pointRobot = Point2D(x: 0, y: 0)
        
        var points = [Point2D]()
        var pointsRobot = [Point2D]()
        
        points.append(point)
        pointsRobot.append(pointRobot)
        
        for (i, value) in In2015D03.partOne.enumerated() {
            switch value {
            case "^":
                if (i % 2 == 0) {
                    point.y = point.y + 1
                    if (!points.contains(where: {$0.y == point.y && $0.x == point.x} )) {
                        points.append(point)
                    }
                } else {
                    pointRobot.y = pointRobot.y + 1
                    if (!pointsRobot.contains(where: {$0.y == pointRobot.y && $0.x == pointRobot.x} )) {
                        pointsRobot.append(pointRobot)
                    }
                }
                
            case "v":
                if (i % 2 == 0) {
                    point.y = point.y - 1
                    if (!points.contains(where: {$0.y == point.y && $0.x == point.x} )) {
                        points.append(point)
                    }
                } else {
                    pointRobot.y = pointRobot.y - 1
                    if (!pointsRobot.contains(where: {$0.y == pointRobot.y && $0.x == pointRobot.x} )) {
                        pointsRobot.append(pointRobot)
                    }
                }
            case "<":
                if (i % 2 == 0) {
                    point.x = point.x - 1
                    if (!points.contains(where: {$0.y == point.y && $0.x == point.x} )) {
                        points.append(point)
                    }
                } else {
                    pointRobot.x = pointRobot.x - 1
                    if (!pointsRobot.contains(where: {$0.y == pointRobot.y && $0.x == pointRobot.x} )) {
                        pointsRobot.append(pointRobot)
                    }
                }
            case ">":
                if (i % 2 == 0) {
                    point.x = point.x + 1
                    if (!points.contains(where: {$0.y == point.y && $0.x == point.x} )) {
                        points.append(point)
                    }
                } else {
                    pointRobot.x = pointRobot.x + 1
                    if (!pointsRobot.contains(where: {$0.y == pointRobot.y && $0.x == pointRobot.x} )) {
                        pointsRobot.append(pointRobot)
                    }
                }
            default:
                print("NA")
            }
            
        }
        
        var same = 0
        for first in points {
            for second in pointsRobot {
                if (first.y == second.y && first.x == second.x) {
                    same = same + 1
                }
            }
        }
        
        //print(same)
        return (points.count + pointsRobot.count - same)
    }
    
}
