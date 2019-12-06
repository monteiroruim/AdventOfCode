//
//  nineteenDayFour.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 05.12.19.
//  Copyright © 2019 Pereira Orlando. All rights reserved.
//

import Foundation

extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}

class nineteenDayFour {
    
    // Range 165432-707912
    var numberOfPasswords: Int
    let maxRange: Int
    var minRange: Int
    
    init () {
        numberOfPasswords = 0
        maxRange = 707912
        minRange = 165432
        partOne()
    }

    func checkDoubleAndIncrementalDigits(digits: [Int]) -> Bool {
        var isDouble: Bool
        var isIncremental: Bool
        var counter = 0
        isDouble = false
        isIncremental = true
        var counterRepeated = 0
        
        for i in 0..<6 {
            for k in i+1..<6 {
                
                print("    at \(digits[i]) with \(digits[k])")
                if (digits[i] == digits[k]) {
                    print("yes at \(i) \(digits[i]) with \(digits[k])")
                    counter+=1
                }
                if (!(digits[i] <= digits[k])) {
                    isIncremental=false
                }
                
//                if ((digits[i] == digits[k])) {
//                    counterRepeated+=1
////                    print(counterRepeated)
//                    print("\(digits[i]) \(digits[k]) \(counterRepeated)")
//                }
//                print(counterRepeated)
//                counterRepeated=0
            }
        }
        
        if counter > 0 {
            isDouble = true
        }
        
        print(counter)
//        print(counterRepeated)
//        if (counterRepeated == 3 || counterRepeated == 10) {
//            isDouble = false
//        }
        
        return (isDouble && isIncremental)
    }
    
    func checkNumberOfPasswords() -> Int{
        print("Checking the number of passwords...")
        
        for i in minRange...maxRange {
            let numbers = i.digits
            
            if (checkDoubleAndIncrementalDigits(digits: numbers)) {
                numberOfPasswords+=1
            }
            
        }
        return numberOfPasswords
    }
    
    func partOne() {
//        print("Number of passwords: \(checkNumberOfPasswords())")
        // p1 validators
//        print("\(checkDoubleAndIncrementalDigits(digits: [1,1,1,1,1,1]))")
//        print("\(checkDoubleAndIncrementalDigits(digits: [2,2,3,4,5,0]))")
//        print("\(checkDoubleAndIncrementalDigits(digits: [1,2,3,7,8,9]))")
        
        // p2 validators
//        print("\(checkDoubleAndIncrementalDigits(digits: [1,1,2,2,3,3]))")
//        print("\(checkDoubleAndIncrementalDigits(digits: [1,2,3,4,4,4]))")
        print("\(checkDoubleAndIncrementalDigits(digits: [1,2,3,4,6,6]))")
//        print("\(checkDoubleAndIncrementalDigits(digits: [1,4,4,4,4,4]))")
//        print("\(checkDoubleAndIncrementalDigits(digits: [4,4,4,5,6,7]))")

    }
    
}
