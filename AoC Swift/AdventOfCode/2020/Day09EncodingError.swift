//
//  EncodingError.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 09.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class EncodingError {
    
    var enconding = In2020D09.day09EncodingError.components(separatedBy: "\n").compactMap{ Int($0) }
    
    init() {
        let invalidNumber = partOne(encList: enconding)
        print("Part 1 answer \(invalidNumber)")
        partTwo(encList: enconding, invalidNumber: invalidNumber)
    }
    
    func partTwo(encList: [Int], invalidNumber: Int) {
        var list = encList
        let valueToFind = invalidNumber
        var targetFound = true
        var intervalValue = [Int]()
        var tempCount = 0
        var answer = 0
        
        while targetFound {
            tempCount = 0

            for i in 0...list.count {
                tempCount+=list[i]
                intervalValue.append(list[i])
                
                if (tempCount == valueToFind) {
                    intervalValue.sort()
                    answer = intervalValue[0]+intervalValue[intervalValue.count-1]
                    targetFound = false
                    break
                }
                if (tempCount > valueToFind) {
                    list.removeFirst()
                    intervalValue.removeAll()
                    break
                }
            }
        }
        print("Part 2 answer \(answer)")
    }
    
    func partOne(encList: [Int]) -> Int{
        var list = encList
        let preamble = 24 //4
        let possibleCombinations = 300 // 10 //all unique possible combinations of 25 elements
        var invalidNumber = 0
        var tempCount = 0
        var targetFound = true
        
        while targetFound {
            tempCount=0
            outerLoop: for i in 0...preamble {
                for j in 0...preamble where j > i {
                    let sum = list[i]+list[j]
                    invalidNumber = list[preamble+1]
                    
                    (sum != invalidNumber) ? (tempCount+=1) : nil
                }
            }
            list.removeFirst()
            (tempCount == possibleCombinations) ? (targetFound = false) : nil
        }
        return invalidNumber
    }
    
}
