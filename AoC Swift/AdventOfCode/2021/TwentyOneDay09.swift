//
//  TwentyOneDay09.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 09.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

extension Sequence {
    func union<T>() -> Set<T> where Element == Set<T> {
        var sum = Set<T>()
        for item in self {
            sum.formUnion(item)
        }
        return sum
    }
}

class TwentyOneDay09 {
    
    private var input = In2021D09().getInput()
        .components(separatedBy: .newlines)
        .map{
            $0.map{
                Int(String($0))!
            }
        }
    private var points = In2021D09().getInput()
        .split(separator: "\n")
        .enumerated()
        .reduce(into: [Point: Int]()) { dict, tuple in
            let (y, line) = tuple
            line.enumerated().forEach { (x, height) in
                dict[Point(x: x, y: y)] = height.wholeNumberValue!
            }
        }
    
    struct Point: Hashable {
        var x: Int
        var y: Int
        
        var neighbours: Set<Point> {
            [
                Point(x: x, y: y + 1),
                Point(x: x, y: y - 1),
                Point(x: x + 1, y: y),
                Point(x: x - 1, y: y)
            ]
        }
    }
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func checkAdjacents(row: Int, col: Int) -> [Int] {
        var lowest = Int.max
        var flag = false
        var positions = [Int]()
        var cc = 0
        var rr = 0
        
    outloop: for r in -1...1 {
        for c in -1...1  where !(r == 0 && c == 0) && (r == 1 && c == 0) || (r == -1 && c == 0) || (r == 0 && c == 1) || (r == 0 && c == -1) { // up & down, left & right check only
            if (0..<input.count).contains(row + r) && (0..<input.first!.count).contains(col + c) {
                    
                    if (input[row][col] < input[row+r][col+c]) {
                        lowest = input[row][col]
                        cc = col
                        rr = row
                        flag = true
                    } else {
                        flag = false
                        break outloop
                    }
                    
                }
            }
        }
        
        positions.append(lowest)
        positions.append(rr)
        positions.append(cc)
        
        if (flag) {
            return positions
        } else {
            return [-1]
        }

    }
    
    private func PartOne() -> Int {

        var count = 0
        for row in 0..<input.count {
            for col in 0..<input.first!.count {
                let val = checkAdjacents(row: row, col: col)
                (val[0] > -1) ? count += val[0] + 1 : nil
            }
        }
    
        return count
    }
    
    private func PartTwo() -> Int {
        
        var count = 0
        var lowPoints = [Point: Int]()
        for row in 0..<input.count {
            for col in 0..<input.first!.count {
                let val = checkAdjacents(row: row, col: col)
                if (val[0] > -1) {
                    let p = Point(x: val[2], y: val[1])
                    lowPoints[p] = val[0]
                }
            }
        }
        
        let basinSizes = lowPoints.map { point, height -> Int in
            var basin: Set<Point> = [point]
            var pointsToExplore: Set<Point> = [point]
                
                while pointsToExplore.isEmpty == false {
                    pointsToExplore = pointsToExplore.lazy.map{
                        point in point.neighbours.filter { neighbour in
                            guard let height = self.points[neighbour] else { return false }
                            guard !basin.contains(neighbour) else { return false }
                            return height != 9
                        }
                    }.union()
                    basin.formUnion(pointsToExplore)
                }
            return basin.count
        }
        
        count = count + Int(basinSizes.sorted(by: >)
                                .prefix(3)
                                .reduce(1, *)
                                .description)!
        
        return count
    }

    private func Tests() {
        assert(PartOne() == 564, "PartOne KO")
        assert(PartTwo() == 1038240, "PartTwo KO")
    }
    
}
