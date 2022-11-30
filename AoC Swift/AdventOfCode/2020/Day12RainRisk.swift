//
//  Day12RainRisk.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 14.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class RainRisk {
    
    var globalInstructions = In2020D12.day12navigationInstructions.components(separatedBy: .newlines)
    
    struct Point {
        var x: Int
        var y: Int
    }
    
    init() {
        partOne(instructions: self.globalInstructions)
        partTwo(instructions: self.globalInstructions)
    }
    
    func partTwo(instructions: [String]) {
        var waypoint = Point(x: 10, y: 1)
        var ferryPosition = Point(x: 0, y: 0)
        
        for elem in instructions {
            let letter = elem[elem.index(elem.startIndex, offsetBy: 0)]
            let amount = Int(elem[elem.index(elem.startIndex, offsetBy: 1)...])!
            
            switch letter {
            case "N":
                waypoint.y += amount
            case "S":
                waypoint.y -= amount
            case "E":
                waypoint.x += amount
            case "W":
                waypoint.x -= amount
            case "L":
                for _ in 0 ..< (amount / 90) {
                    let temp = waypoint.x
                    waypoint.x = -waypoint.y
                    waypoint.y = temp
                }
            case "R":
                for _ in 0 ..< (amount / 90) {
                    let temp = waypoint.x
                    waypoint.x = waypoint.y
                    waypoint.y = -temp
                }
            case "F":
                ferryPosition.x += amount*waypoint.x
                ferryPosition.y += amount*waypoint.y
            default:
                fatalError()
            }
            //print("Ferry \(ferryPosition.x),\(ferryPosition.y), waypoint \(waypoint.x),\(waypoint.y)")
        }
        
        print("Part 2 answer \(abs(ferryPosition.x)+abs(ferryPosition.y))")
    }
    
    func partOne(instructions: [String]) {
        var point = Point(x: 0, y: 0)
        let directions = ["E", "S", "W", "N"]
        var currentPosition = 0
        
        for elem in instructions {
            let letter = elem[elem.index(elem.startIndex, offsetBy: 0)]
            let amount = Int(elem[elem.index(elem.startIndex, offsetBy: 1)...])!
            
            switch letter {
            case "N":
                point.y += amount
            case "S":
                point.y -= amount
            case "E":
                point.x += amount
            case "W":
                point.x -= amount
            case "L":
                currentPosition = (currentPosition - (amount / 90) + 4) % 4
            case "R":
                currentPosition = (currentPosition + (amount / 90)) % 4
            case "F":
                switch directions[currentPosition] {
                case "N":
                    point.y += amount
                case "S":
                    point.y -= amount
                case "E":
                    point.x += amount
                case "W":
                    point.x -= amount
                default:
                    fatalError()
                }
            default:
                fatalError()
            }
        }
        print("Part 1 answer: \(abs(point.x)+abs(point.y))")
    }
}
