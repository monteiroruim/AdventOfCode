//
//  TwentyTwoDay12.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 08.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay12 {
    
    struct Paths {
        var points: [Int]
        var steps: Int
    }
    
    private var input: String
    var grid: [[Int]]
    var start: [Int]
    var end: [Int]
    let allDirections: [[Int]]
    var allStartingPossibilities : [[Int]]
    
    public init() {
        
        self.input = In2022D12().getInput()
        self.grid = [[Int]]()
        self.start = [0,0]
        self.end = [0,0]
        self.allDirections = [[0, 1], [1, 0], [-1, 0], [0, -1]]
        
        self.allStartingPossibilities = []
        
        parseGrid()
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //        Tests()
    }
    
    
    func PartOne() -> Int {
        return findPath(self.start, self.end)
    }
    
    private func PartTwo() -> Int {
 
        var min = Int.max
        for p in self.allStartingPossibilities {
            let steps = findPath([p[0],p[1]], self.end)
            (steps < min && steps > 0 ) ? min = steps : nil
        }
        return min
    }
    
    private func parseGrid() {
        
        self.grid = self.input
            .components(separatedBy: .newlines).enumerated().map { idx in
                return Array(idx.element).enumerated().map {
                    if $0.element.isLowercase {
                        if Int($0.element.asciiValue!) == 97 { // a
                            self.allStartingPossibilities.append([idx.offset, $0.offset])
                        }
                        return Int($0.element.asciiValue!)
                    } else if $0.element == Character("S") {
                        self.start = [idx.offset, $0.offset]
                        self.allStartingPossibilities.append(self.start)
                        return Int(Character("a").asciiValue!)
                    } else if $0.element == Character("E") {
                        self.end = [idx.offset, $0.offset]
                        return Int(Character("z").asciiValue!)
                    }
                    fatalError("Invalid character '\($0.element)'")
                }
            }
    }
    
    func findPath(_ start: [Int], _ end: [Int]) -> Int {
        var visitedGrid = [[Int]](repeating: [Int](repeating: 0, count: grid[0].count), count: grid.count)
        var queue = [Paths]()
        
        let rangeXX = 0...(grid.count - 1)
        let rangeYY = 0...(grid[0].count - 1)
        
        visitedGrid[start[0]][start[1]] = 1
        queue.append(Paths(points: start, steps: 0))
        
        while !queue.isEmpty {
            let path = queue.removeFirst()
            
            let currentValue = self.grid[path.points[0]][path.points[1]] // a97, b98
            
            if path.points == end { return path.steps }
            
            for direction in allDirections {
                let newDirection = zip(path.points, direction).map(+)
                
                if rangeXX.contains(newDirection[0]), rangeYY.contains(newDirection[1]) { // bounds of grid
                    let visited = visitedGrid[newDirection[0]][newDirection[1]]
                    let valueOfCell = grid[newDirection[0]][newDirection[1]]
                    
                    // not visited, no more than 1 difference
                    if visited == 0, ((valueOfCell - currentValue) ) <= 1 {
                        visitedGrid[newDirection[0]][newDirection[1]] = 1
                        queue.append(Paths(points: newDirection, steps: path.steps + 1))
                    }
                }
            }
        }
        return -1
    }
    
    
    private func Tests() {
        assert(PartOne() == 517, "Part 1 KO")
        assert(PartTwo() == 0, "Part 2 KO")
    }
    
}
