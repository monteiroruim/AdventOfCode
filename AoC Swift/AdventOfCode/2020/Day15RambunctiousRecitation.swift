//
//  Day15RambunctiousRecitation.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 17.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class Day15RambunctiousRecitation {
    
    var input = Input2020d15.d15RambunctiousRecitation.components(separatedBy: ",").compactMap{ Int($0) }
    
    init () {
        partOne(data: self.input)
        partTwo(data: self.input)
    }
        
    func partTwo(data: [Int]) {
        var nums = [Int: Int]()
        var nextNum = -1
        
        for (idx, num) in data.enumerated() {
            if nextNum == -1 {
                nextNum = num
            }
            nums[nextNum] = idx
            nextNum = num
        }
        
        for idx in (nums.count + 1)..<30000000 {
            if let lastIdx = nums[nextNum] {
                nums[nextNum] = idx
                nextNum = idx - lastIdx
            } else {
                nums[nextNum] = idx
                nextNum = 0
            }
        }
        print("Part 2 answer \(nextNum)")
    }
    
    func partOne(data: [Int]) {
        var nums = [Int: Int]()
        var nextNum = -1
        
        for (idx, num) in data.enumerated() {
            if nextNum == -1 {
                nextNum = num
            }
            nums[nextNum] = idx
            nextNum = num
        }
        
        for idx in (nums.count + 1)..<2020 {
            if let lastIdx = nums[nextNum] {
                nums[nextNum] = idx
                nextNum = idx - lastIdx
            } else {
                nums[nextNum] = idx
                nextNum = 0
            }
        }
        print("Part 1 answer \(nextNum)")
    }

}
