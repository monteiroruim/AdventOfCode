//
//  Day01.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 19.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay01 {
    
    var input = [Int]()
    
    init() {
        input = In2021D01().getInput().components(separatedBy: CharacterSet.newlines).compactMap{ Int($0) }
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        var sum = 0
        var value = 0
        for i in input {
            (i > value) ? sum += 1 : nil
            value =  i
        }
        return sum-1
    }
    
    /*
     199  A
     200  A B
     208  A B C
     210    B C D
     200      C D E
     207        D E F
     240          E F G
     269            F G H
     260              G H
     263                H
     */
    private func PartTwo() -> Int {
        var sum = 0
        var value = 0
        for i in 0...input.count - 3 {
            let localSum = input[i] + input[i+1] + input[i+2]
            (localSum > value) ? sum += 1 : nil
            value =  localSum
        }
        return sum - 1
    }
    
    private func Tests() {
        assert(PartOne() == 1446, "Failed at PartOne")
        assert(PartTwo() == 1486, "Failed at PartTwo")
    }
    
}
