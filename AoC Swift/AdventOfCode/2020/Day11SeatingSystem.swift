//
//  Day11SeatingSystem.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 11.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class Day11SeatingSystem {
    
    var seatingList = In2020D11.day11SeatingList.components(separatedBy: .newlines).map{ Array($0) }
    
    init() {
        partOne()
        
        self.seatingList = In2020D11.day11SeatingList.components(separatedBy: .newlines).map{ Array($0) }
        partTwo()
    }
    
    func lookLine(_ row: Int, _ col: Int, _ r: Int, _ c: Int) -> Character? {
        if (0..<seatingList.count).contains(row + r) &&
            (0..<seatingList.first!.count).contains(col + c) {
            return seatingList[row+r][col+c]
        } else {
            return nil
        }
    }
    
    func checkAdjacentsPartTwo(_ row: Int, _ col: Int) -> Int {
        var n = 0
        for r in -1...1 {
            for c in -1...1 where !(r == 0 && c == 0) {
                guard let ch = lookLine(row,col,r,c) else { continue }
                if ch == "#" {
                    n += 1
                } else if ch == "."{
                    var mult = 2
                    while true {
                        guard let ch = lookLine(row,col,r*mult,c*mult),
                              ch != "L" else { break }
                        if ch == "#" {
                            n+=1
                            break
                        } else {
                            mult += 1
                        }
                    }
                }
            }
        }
        return n
    }
    
    func partTwo() {
        var currentIteration = 0
        var count = 0
        var flag = true
        
        while flag {
            
            var tempSeats = seatingList
            for row in 0..<seatingList.count {
                for col in 0..<seatingList.first!.count {
                    let adjacentsOfSeat = checkAdjacentsPartTwo(row, col)
                    if tempSeats[row][col] == "L" && adjacentsOfSeat == 0 {
                        tempSeats[row][col] = "#"
                    } else if tempSeats[row][col] == "#" && adjacentsOfSeat >= 5 {
                        tempSeats[row][col] = "L"
                    }
                }
            }
            seatingList = tempSeats
            currentIteration += 1
            
            var adjacentTempCount = 0
            for row in 0..<seatingList.count {
                for col in 0..<seatingList.first!.count {
                    if (seatingList[row][col] == "#") {
                        adjacentTempCount+=1
                    }
                }
            }
            
            if (adjacentTempCount != count) {
                count = adjacentTempCount
            } else {
                flag = false
            }
        }
        print("Part 2 answer: \(count), \(currentIteration)")
        
    }
    
    func checkAdjacents(row: Int, col: Int) -> Int {
        var n = 0
        for r in -1...1 {
            for c in -1...1  where !(r == 0 && c == 0){
                if (0..<seatingList.count).contains(row + r) &&
                    (0..<seatingList.first!.count).contains(col + c) &&
                    seatingList[row+r][col+c] == "#" {
                    n += 1
                }
            }
        }
        return n
    }
    
    func partOne() {
        var currentIteration = 0
        var count = 0
        var flag = true
        
        while flag {
            
            var tempSeats = seatingList
            for row in 0..<seatingList.count {
                for col in 0..<seatingList.first!.count {
                    let adjacentsOfSeat = checkAdjacents(row: row, col: col)
                    if (tempSeats[row][col] == "L") && adjacentsOfSeat == 0 {
                        tempSeats[row][col] = "#"
                    } else if (tempSeats[row][col] == "#") && adjacentsOfSeat >= 4 {
                        tempSeats[row][col] = "L"
                    }
                }
            }
            seatingList = tempSeats
            currentIteration += 1
            
            var adjacentTempCount = 0
            for row in 0..<seatingList.count {
                for col in 0..<seatingList.first!.count {
                    if (seatingList[row][col] == "#") {
                        adjacentTempCount+=1
                    }
                }
            }
            
            if (adjacentTempCount != count) {
                count = adjacentTempCount
            } else {
                flag = false
            }
        }
        print("Part 1 answer: \(count), \(currentIteration)")
        
    }
}
