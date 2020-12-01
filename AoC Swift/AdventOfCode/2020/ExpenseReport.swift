//
//  ExpenseReport.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 01.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class ExpenseReport {
    
    private let valueToFind: Int
    private var expense: [Int]
    private var answer: Int
    
    init() {
        self.valueToFind = 2020
        self.answer = 0
        self.expense = ExerciseInputs.day01ExpenseList.split(separator: "\n")
            .compactMap { Int($0) }
        
        print("puzzle answer (part 1): \(partOne())")
        print("puzzle answer (part 2): \(partTwo())")
    }
    
    func partOne() -> Int{
        outerLoop: for (i, first) in expense.enumerated() {
            for (j, second) in expense.enumerated() where j > i {
                    
                if (first+second == valueToFind) {
                    answer = first*second
                    break outerLoop
                }
            }
        }
        return answer
    }
    
    func partTwo() -> Int{
        outerLoop: for (i, first) in expense.enumerated() {
            for (j, second) in expense.enumerated() where j > i {
                for (k, third) in expense.enumerated() where k > j{
                    
                    if (first+second+third == valueToFind) {
                        answer = first*second*third
                        //print("Found at: \(i), \(j), \(k)")
                        break outerLoop
                    }
                }
            }
        }
        return answer
    }
    
}
