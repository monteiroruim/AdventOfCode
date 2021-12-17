//
//  TwentyOneDay13.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 17.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay13 {
    
    let components = In2021D13().getInput().components(separatedBy: "\n\n")
    let pointLines: String
    let foldLines: String
    let initialPoints: Set<Point>

    struct Point: Hashable {
        var x: Int
        var y: Int
    }
    
    public init() {
        
        self.pointLines = components[0]
        self.foldLines = components[1]
        
        self.initialPoints = self.pointLines
            .split(separator: "\n")
            .reduce(into: Set<Point>()) { points, line in
                guard line.starts(with: "fold along") == false else { return }
                let numbers = line.split(separator: ",").map { Int($0)! }
                points.insert(Point.init(x: numbers[0], y: numbers[1]))
            }
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    func applyFold(_ fold: Substring, to points: inout Set<Point>) {
        let components = fold.split(separator: "=")
        let axis = components[0].last == "x"
        let amount = Int(components[1])!
        
        if axis {
            points = Set(
                points.lazy.map { point in
                    guard point.x > amount else { return point }
                    let newX = (2 * amount) - point.x
                    return Point(x: newX, y: point.y)
                }
            )
        } else {
            points = Set(
                points.lazy.map { point in
                    guard point.y > amount else { return point }
                    let newY = (2 * amount) - point.y
                    return Point(x: point.x, y: newY)
                }
            )
        }
    }
    
    private func PartOne() -> String {
        var points = initialPoints
        applyFold(foldLines.split(separator: "\n")[0], to: &points)
        return points.count.description
    }
    
    private func PartTwo() -> String {
        var points = initialPoints

        for fold in foldLines.split(separator: "\n") {
            applyFold(fold, to: &points)
        }

        let xRange = points.map(\.x).min()! ... points.map(\.x).max()!
        let yRange = points.map(\.y).min()! ... points.map(\.y).max()!

        return yRange
            .map { y in
                xRange
                    .map { points.contains(Point(x: $0, y: y)) ? "X" : "." }
                    .joined()
            }
            .joined(separator: "\n")
    }

    private func Tests() {
        assert(PartOne() == "708", "PartOne KO")
        assert(PartTwo() == "0", "PartTwo KO")
    }
    
}
