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
    
    let maxRange: Int
    var minRange: Int
    
    init () {
        maxRange = 707912
        minRange = 165432
        partOne()
    }
    
    func checkDoubleAndIncrementalDigits(digits: [Int]) -> Bool {
        var isDouble: Bool
        var counter = 0
        isDouble = false
        
        for i in 0..<6 {
            for k in i+1..<6 {
                if (digits[i] == digits[k]) {
                    counter+=1
                    isDouble = true
                }
            }
        }
        
        return (isDouble)
    }
    
    func checkNumberOfPasswords() -> (Int, Int){
        print("Checking the number of passwords...")
        var adjacentPasswords = 0
        var numberOfPasswords = 0
        
        for i in minRange...maxRange {
            let numbers = i.digits
            
            if numbers.sorted() == numbers {
                
                if (checkDoubleAndIncrementalDigits(digits: numbers)) {
                    numberOfPasswords+=1
                }
                
                if (hasAtLeast2Pair(numbers)) {
                    adjacentPasswords += 1
                }
            }
        }
        return (numberOfPasswords, adjacentPasswords)
    }
    
    func hasAtLeast2Pair(_ array: [Int]) -> Bool {
        var count = 0
        var dict: [Int:Int] = [:]
        var dupe = false
        for pair in zip(array, array.dropFirst()) {
            if pair.0 == pair.1 {
                count += 1
                dict[pair.0] = count
            }
            else {
                if count == 1 {
                    dupe = true
                    break
                }
                count = 0
            }
        }
        if count == 1 {
            dupe = true
        }
        return dupe
    }
    
    
    func partOne() {
        let date = Date()
        let numberOfPasswords = checkNumberOfPasswords()
        print("# passwords: \(numberOfPasswords.0), # adjacents \(numberOfPasswords.1) in", Date().timeIntervalSince(date)) // 1315 high 854 low
        // p1 validators
        //        print("\(checkDoubleAndIncrementalDigits(digits: [1,1,1,1,1,1]))")
        //        print("\(checkDoubleAndIncrementalDigits(digits: [2,2,3,4,5,0]))")
        //        print("\(checkDoubleAndIncrementalDigits(digits: [1,2,3,7,8,9]))")
        
    }
    
}
