//
//  Template.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 22.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class Template {
    
    //private var input: [String]
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        return 0
    }
    
    private func PartTwo() -> Int {
        return 0
    }

    private func Tests() {
        assert(PartOne() == 0, "OK")
        assert(PartTwo() == 0, "OK")
    }
    
}
