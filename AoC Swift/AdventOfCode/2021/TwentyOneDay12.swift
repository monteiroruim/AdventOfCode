//
//  TwentyOneDay12.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 15.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay12 {
    
    let input = In2021D12().getInput()
        .split(separator: "\n")
        .reduce(into: [Substring: Set<Substring>]()) { dict, line in
            let components = line.split(separator: "-")
            dict[components[0], default: []].insert(components[1])
            dict[components[1], default: []].insert(components[0])
        }
    
    struct Path {
        var caves: [Substring]
        var hasVisitedASmallCaveTwice: Bool
    }
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> String {
        var successfulPaths = 0
        var paths: [[Substring]] = [["start"]]
            
        while let path = paths.popLast() {
            let visitedSmallCaves = path.filter { $0.allSatisfy(\.isLowercase) }
            var nextDestinations = self.input[path.last!]!
            nextDestinations.subtract(visitedSmallCaves)
            nextDestinations.remove("start")
            if nextDestinations.contains("end") {
                nextDestinations.remove("end")
                successfulPaths += 1
            }
            let newPaths = nextDestinations.map { path + [$0] }
            paths.append(contentsOf: newPaths)
        }
            
        return successfulPaths.description
    }
    
    private func PartTwo() -> String {

        var successfulPaths = 0
        var paths: [Path] = [Path(caves: ["start"], hasVisitedASmallCaveTwice: false)]
        
        while let path = paths.popLast() {
            let visitedSmallCaves = path.caves.lazy.filter { $0.allSatisfy(\.isLowercase) }
            
            var nextDestinations = self.input[path.caves.last!]!
            nextDestinations.remove(path.caves.last!)
            if path.hasVisitedASmallCaveTwice {
                nextDestinations.subtract(visitedSmallCaves)
            }
            nextDestinations.remove("start")
            if nextDestinations.contains("end") {
                nextDestinations.remove("end")
                successfulPaths += 1
            }
            let newPaths = nextDestinations.map {
                Path(
                    caves: path.caves + [$0],
                    hasVisitedASmallCaveTwice: path.hasVisitedASmallCaveTwice || visitedSmallCaves.contains($0)
                )
            }
            paths.append(contentsOf: newPaths)
        }
        
        return successfulPaths.description
    }

    private func Tests() {
        assert(PartOne() == "4720", "PartOne KO")
        assert(PartTwo() == "147848", "PartTwo KO")
    }
    
}
