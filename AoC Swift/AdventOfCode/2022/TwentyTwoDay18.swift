//
//  TwentyTwoDay18.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 30.11.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation
import Algorithms

class TwentyTwoDay18 {
    
    enum Axis3D: CaseIterable, Hashable {
        case x, y, z
    }
    
    private struct Point3D: Hashable {
        var x: Int
        var y: Int
        var z: Int
        
        static let zero = Point3D(x: 0, y: 0, z: 0)
        
        func moving(along axis: Axis3D, distance: Int = 1) -> Point3D {
            Point3D(
                x: x + (axis == .x ? distance : 0),
                y: y + (axis == .y ? distance : 0),
                z: z + (axis == .z ? distance : 0)
            )
        }
        
        func neighbours() -> [Point3D] {
            Axis3D.allCases.flatMap { axis in
                [-1, 1].map { distance in
                    self.moving(along: axis, distance: distance)
                }
            }
        }
    }
    
    private var input: [String]
    private var points: [Point3D]
    
    public init() {
        self.input = In2022D18().getInputDebug().components(separatedBy: "\n")
        self.points = []
        
        for i in self.input {
            let v = i.split(separator: ",")
            points.append(Point3D(x: Int(v[0])!, y: Int(v[1])!, z: Int(v[2])!))
        }
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {

        print(points.flatMap{ $0.neighbours()} )
        
        return points
            .flatMap { $0.neighbours() }
            .filter { self.points.contains($0) == false }
            .count
    }
    
    private func PartTwo() -> Int {
        2
    }
    
    private func Tests() {
        assert(PartOne() == 4444, "PartOne KO")
        assert(PartTwo() == 0, "PartTwo KO")
    }
    
}
