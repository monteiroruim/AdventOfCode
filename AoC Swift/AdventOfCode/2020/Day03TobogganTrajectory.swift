//
//  TobogganTrajectory.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 03.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class TobogganTrajectory {
    
    var tobogganMap: [String]
    var moveRight: Int
    var moveDown: Int
        
    struct Directions {
        var moveRight: Int
        var moveDown: Int
    }
    
    init() {
        self.tobogganMap = Input2020d03.day03TobogganTrajectory
        self.moveDown = 0
        self.moveRight = 0
        
        partOne()
        partTwo()
    }
    
    func partOne() {
        self.moveRight = 3
        var countPartOne = 0
        
        var moveToPos = self.moveRight
        for (pos, input) in self.tobogganMap.enumerated() {
            let columns = input.count
            
            (pos > 1) ? moveToPos += self.moveRight : nil
            
            (moveToPos >= columns) ? moveToPos = moveToPos - columns : nil
            
            let char = input[input.index(input.startIndex, offsetBy: moveToPos)]
            
            (char == "#" && pos != 0) ? countPartOne+=1 : nil
            
        }
        print("Part 1 Result: \(countPartOne)")
    }
    
    func partTwo() {
        var countPartTwo = 1
        var tempCountPartTwo = 0
        
        var directions: [Directions] = []
        directions.append(Directions(moveRight: 1, moveDown: 1))
        directions.append(Directions(moveRight: 3, moveDown: 1))
        directions.append(Directions(moveRight: 5, moveDown: 1))
        directions.append(Directions(moveRight: 7, moveDown: 1))
        directions.append(Directions(moveRight: 1, moveDown: 2))
        
        for direction in directions {
            self.moveRight = direction.moveRight
            self.moveDown = direction.moveDown
        
            var moveToPos = self.moveRight
            for (pos, input) in self.tobogganMap.enumerated() {
                let columns = input.count
                
                (pos > 1) ? moveToPos += self.moveRight : nil
                
                (moveToPos >= columns) ? moveToPos = moveToPos - columns : nil
                
                let char = input[input.index(input.startIndex, offsetBy: moveToPos)]
                
                (char == "#" && pos != 0) ? tempCountPartTwo+=1 : nil
            }
            
            (self.moveDown == 2) ? (tempCountPartTwo = tempCountPartTwo/2) : nil

            countPartTwo = countPartTwo * tempCountPartTwo
            tempCountPartTwo = 0
            moveToPos = 0
        }
        print("Part 2 Result: \(countPartTwo)")
    }
    
}
