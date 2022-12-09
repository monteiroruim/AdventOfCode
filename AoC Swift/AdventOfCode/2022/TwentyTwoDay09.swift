//
//  TwentyTwoDay09.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 08.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay09 {
    
    private var input: [String]
    
    private struct Point: Hashable {
        var x: Int
        var y: Int
        
        func moveHead(_ direction: String) -> Point {
            switch direction {
            case "U": return Point(x: x, y: y + 1)
            case "D": return Point(x: x, y: y - 1)
            case "L": return Point(x: x - 1, y: y)
            case "R": return Point(x: x + 1, y: y)
            default:
                return Point(x: -1, y: -1)
            }
        }
        
        func isConnectedTo(_ other: Point) -> Bool {
            if self == other { return true }
            return abs(x - other.x) <= 1 && abs(y - other.y) <= 1
        }
        
        mutating func moveTail(_ head: Point) {
            if self.isConnectedTo(head) { return }
            
            let xMove = x < head.x ? 1 : -1
            let yMove = y < head.y ? 1 : -1
            
            if x == head.x {
                y += yMove
            } else if y == head.y {
                x += xMove
            } else {
                x += xMove
                y += yMove
            }
        }
        
    }
    
    public init() {
        
        self.input = In2022D09().getInput().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        return calculateTailVisitedLocations(2)
    }
    
    private func PartTwo() -> Int {
        return calculateTailVisitedLocations(10)
    }

    func calculateTailVisitedLocations(_ length: Int) -> Int {
        let zero = Point(x: 0, y: 0)
        var points = Array(repeating: zero, count: length)
        var tailPoints: Set<Point> = [zero]
        
        for ins in input {
            let instructions = ins.components(separatedBy: " ")
            let direction = instructions.first!
            let steps = Int(instructions.last!)!
            
            for _ in 1 ... steps {
                points[0] = points[0].moveHead(direction)
                //print("H", direction, points[0])
                for (previousIndex, index) in points.indices.adjacentPairs() { //1...5 [(1, 2), (2, 3), (3, 4), (4, 5)]
                    //print(points[previousIndex], points[index], previousIndex, index)
                    points[index].moveTail(points[previousIndex])
                }
                tailPoints.insert(points.last!)
            }
        }
        return tailPoints.count
    }
    
    private func Tests() {
        assert(PartOne() == 6030, "Part 1 KO")
        assert(PartTwo() == 2545, "Part 2 KO")
    }
    
}
