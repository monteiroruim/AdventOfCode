//
//  d25.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 28.11.19.
//  Copyright © 2019 Pereira Orlando. All rights reserved.
//

import Foundation

class day25 {
    
    var maxMatrixSize: Int
    var previousValue: Int
    var positionX: Int
    var positonY: Int
    var date: Date
    
    init() {
        self.maxMatrixSize = 10000
        self.previousValue = 20151125
        self.positionX = 2978
        self.positonY = 3083
        self.date = Date()
        self.returnMatrixValue()
    }
    
    init (maxMatrixSize: Int) {
        self.maxMatrixSize = maxMatrixSize
        self.previousValue = 20151125
        self.positionX = 2978
        self.positonY = 3083
        self.date = Date()
        self.returnMatrixValue()
    }
    
    func returnMatrixValue() {
    
        outerLoop: for diagonal in 1...maxMatrixSize {
            var row = diagonal
            var column = 1
            for _ in 1...diagonal {
                if (row == positionX && column == positonY) {
                    print("Vec \(diagonal) M[\(row)][\(column)] = \(previousValue) in", Date().timeIntervalSince(date) , " secs")
                    break outerLoop
                }
                row-=1
                column+=1
                previousValue = (previousValue * 252533) % 33554393
            }
        }
    }
}
