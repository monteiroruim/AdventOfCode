//
//  BinaryBoarding.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 05.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class BinaryBoarding {
    
    var boardingPass: [String]
    var row: Double
    var column: Double
    
    init() {
        self.boardingPass = Input2020d05.day05BoardingPass
        self.row = 0.0
        self.column = 0.0
        partOne()
    }
    
    func findMySeat(seat:[Double]) {
        var partTwoResult = 0.0
        
        for i in 0...seat.count-2 where i > 1{
            let previous = seat[i-1]
            
            (seat[i] != previous+1) ? (partTwoResult = seat[i]-1) : nil
        }
        print("Part 2 result: \([partTwoResult])")
    }
    
    func partOne() {
        var seatId = 0.0
        var highestSeatID = 0.0
        var seatArray = [0.0]
        
        for (_, elemt) in self.boardingPass.enumerated() {
            var minRangeRow = 0.0
            var maxRangeRow = 127.0
            var minRangeColumn = 0.0
            var maxRangeColumn = 7.0
            var direction: Character = "X"
            
            let passport = elemt
            for (i, _) in passport.enumerated() {
                //print(direction, row, minRangeRow, maxRangeRow, minRangeColumn, maxRangeColumn)
                
                if (i < 7) {
                    direction = passport[passport.index(passport.startIndex, offsetBy: i)]
                    if (direction == "F") { //lower half
                        maxRangeRow = maxRangeRow - ((maxRangeRow-minRangeRow)/2)
                        maxRangeRow.round(.towardZero)
                        row = maxRangeRow
                    }
                    if (direction == "B") { //Higer half
                        minRangeRow = minRangeRow + ((maxRangeRow-minRangeRow)/2)
                        minRangeRow.round(.up)
                        row = minRangeRow
                    }
                } else {
                    direction = passport[passport.index(passport.startIndex, offsetBy: i)]
                    if (direction == "L") { //lower half
                        maxRangeColumn = maxRangeColumn - ((maxRangeColumn-minRangeColumn)/2)
                        maxRangeColumn.round(.towardZero)
                        column = maxRangeColumn
                    }
                    if (direction == "R") { //Higer half
                        minRangeColumn = minRangeColumn + ((maxRangeColumn-minRangeColumn)/2)
                        minRangeColumn.round(.up)
                        column = minRangeColumn
                    }
                }
                
            }
            seatId = row * 8 + column
            seatArray.append(seatId)
            (seatId > highestSeatID) ?  highestSeatID = seatId : nil
            //print(seatId, highestSeatID, row, column, passport)
        }
        print("Part 1 result: \(highestSeatID)")
        findMySeat(seat: seatArray.sorted())
    }
}
