//
//  Day10AdapterArray.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 14.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class Day10AdapterArray {
    
    var alreadyCounted: [Int: Int] = [:]
    var adapterArray: [Int]
    
    init() {
        self.adapterArray = Input2020d10.day10AdapterArray.components(separatedBy: "\n").compactMap{ Int($0)! }
        self.adapterArray.append(0)
        self.adapterArray.sort()
        let last = self.adapterArray[self.adapterArray.count-1]
        self.adapterArray.append(last+3)
        self.alreadyCounted = [(adapterArray.count - 1): 1] //last position, always fixed
        
        partOne(array: adapterArray)
        print("Part 2 answer: \(partTwo(index: 0, array: adapterArray))")
    }
    
    func partTwo(index: Int, array: [Int]) -> Int {
        var total = 0
        let adapterArray = array
        let currentpositionValue = adapterArray[index]
        
        if let acc = alreadyCounted[index] {
            //print("acc \(acc) \(index)")
            return acc
        }
        
        for i in index+1 ... index+3 {
            //print(i, adapterArray)
            if (i >= adapterArray.count) {
                break
            }
            
            if ((array[i] - currentpositionValue) <= 3) {
                //print("pro: ", array[i], currentpositionValue, adapterArray)
                total += partTwo(index: i, array: adapterArray)
                //print("total", total)
            }
        }
        alreadyCounted[index] = total
        return total
    }
    
    func partOne(array: [Int]) {
        var totalMinJolt = 0
        var totalMaxJolt = 0
        var currentJoltageAdapter = 0
        var adapterArray = array
        var total = 0
        
        while (adapterArray.count > 0) {
            
            for i in adapterArray {
                
                if ((currentJoltageAdapter+1) == i) {
                    totalMinJolt+=1
                    currentJoltageAdapter = currentJoltageAdapter+1
                    break
                }
                
                if ((currentJoltageAdapter+3) == i) {
                    totalMaxJolt+=1
                    currentJoltageAdapter = currentJoltageAdapter+3
                    break
                }
                
            }
            adapterArray.removeFirst()
        }
        total = totalMinJolt * totalMaxJolt
        print("Part 1 answer: \(total)")
    }
    
}
