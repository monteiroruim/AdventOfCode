//
//  FifteenDay09.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 29.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class FifteenDay09 {
    
    private var input = In2015D09().inputDebug.components(separatedBy: CharacterSet.newlines)
    private var uniqueCities: [String] = []
    private var numberOfUniqueCities = 0
    
    func permutations<T>(xs: [T]) -> [[T]] {
        guard let (head, tail) = xs.decompose() else { return [[]] }
        return permutations(xs: tail).flatMap { between(x: head, $0) }
    }
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    private func PartOne() -> Int {
        
        var min = Int.max
        var max = 0
        
        for i in input {
            let line = i.components(separatedBy: CharacterSet.whitespaces)
            let origin = line[0]
            let destination = line[2]
            //let cost = line[4]
            //print(line, origin, destination, cost)
            (!uniqueCities.contains(where: { $0 == origin } )) ? uniqueCities.append(origin) : nil
            (!uniqueCities.contains(where: { $0 == destination } )) ? uniqueCities.append(destination) : nil
        }
        print("Unique:", uniqueCities)
        numberOfUniqueCities = uniqueCities.count
        
        let permutationCities = permutations(xs: uniqueCities)
        var localCost = 0
        //print(permutationCities.count)
        
        for (_, route) in permutationCities.enumerated() {
            //print("Rota", route)
            localCost = 0
            for j in input {
                let line = j.components(separatedBy: CharacterSet.whitespaces)
                let origin = line[0]
                let destination = line[2]
                let cost = line[4]

                //print(route[0], route[1], route[2])
                //print(origin, destination)
                for c in 0..<uniqueCities.count-3 {
                    if (route[c] == origin && route[c+1] == destination || route[c+1] == origin && route[c] == destination) {
//                        print("Cost:", origin, destination, cost)
                        localCost = localCost + Int(cost)!
                    } else if (route[c+1] == origin && route[c+2] == destination || route[c+2] == origin && route[c+1] == destination) {
//                        print("Cost:", origin, destination, cost)
                        localCost = localCost + Int(cost)!
                    }
                }
            }
            (localCost < min) ? min = localCost : nil
            (localCost > max) ? max = localCost : nil
            //print("min", min)
        }
        
        return min
        // 207
        // 764
    }
    
    private func PartTwo() -> Int {
        0
    }
    
    private func Tests() {
        assert(PartOne() == 0, "Failed at PartOne")
        assert(PartTwo() == 0, "Failed at PartTwo")
    }
    
}
