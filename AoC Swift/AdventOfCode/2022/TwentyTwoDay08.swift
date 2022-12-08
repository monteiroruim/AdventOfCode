//
//  TwentyTwoDay08.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 07.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay08 {
        
    private var input: [[Int]]
    
    public init() {
        
        self.input = In2022D08().getInput()
            
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        let heights = self.input
        let totalRows = heights.count
        let totalCols = heights.first?.count ?? 0
        var sum = 0
        
        func dfs(_ row: Int,_ col: Int) -> Bool {
            if row == 0 || col == 0 || row == totalRows-1 || col == totalCols-1  { return true }
            
            let height = heights[row][col]
            
            let left = heights[row][0 ..< col]
            let right = heights[row][(col + 1) ..< heights[row].count]
            let up = (0 ..< row).map { heights[$0][col] }
            let down = ((row + 1) ..< heights.count).map { heights[$0][col] }
            
            return left.allSatisfy({ $0 < height }) || up.allSatisfy({ $0 < height }) ||
            right.allSatisfy({ $0 < height }) || down.allSatisfy({ $0 < height })
        }

        for i in 0..<totalRows {
            for j in 0..<totalCols {
                dfs(i, j) == true ? sum += 1 : nil
            }
        }
        return sum
    }
    
    private func PartTwo() -> Int {
        let heights = self.input
        let totalRows = heights.count
        let totalCols = heights.first?.count ?? 0
        
        func scenicScore(_ row: Int, _ column: Int) -> Int {
            if row == 0 || row == totalRows - 1 || column == 0 || column == totalCols - 1 { return 0 }
            
            let height = self.input[row][column]
            let left = Array(self.input[row][0 ..< column].reversed())
            let right = Array(self.input[row][(column + 1) ..< self.input[row].count])
            let up = Array((0 ..< row).map { self.input[$0][column] }.reversed())
            let down = Array(((row + 1) ..< self.input.count).map { self.input[$0][column] })
            
            return [left, up, right, down]
                .map { min($0.count, $0.prefix(while: { $0 < height }).count + 1) }
                .reduce(1, *)
        }
    
        var max = 0
        for i in 0..<totalRows {
            for j in 0..<totalCols {
                let current = scenicScore(i, j)
                current > max ? max = current : nil
            }
        }

        return max
    }
    
    private func Tests() {
        assert(PartOne() == 1820, "Part 1 KO")
        assert(PartTwo() == 385112, "Part 2 KO")
    }
    
}
