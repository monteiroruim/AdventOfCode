//
//  nineteenDayTwo.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 03.12.19.
//  Copyright © 2019 Pereira Orlando. All rights reserved.
//

import Foundation

private var exerciseNoun = 12
private var exerciseVerb = 2
private var intCodeProgram = [1,exerciseNoun,exerciseVerb,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,1,19,9,23,1,23,9,27,1,10,27,31,1,13,31,35,1,35,10,39,2,39,9,43,1,43,13,47,1,5,47,51,1,6,51,55,1,13,55,59,1,59,6,63,1,63,10,67,2,67,6,71,1,71,5,75,2,75,10,79,1,79,6,83,1,83,5,87,1,87,6,91,1,91,13,95,1,95,6,99,2,99,10,103,1,103,6,107,2,6,107,111,1,13,111,115,2,115,10,119,1,119,5,123,2,10,123,127,2,127,9,131,1,5,131,135,2,10,135,139,2,139,9,143,1,143,2,147,1,5,147,0,99,2,0,14,0]

class nineteenDay02 {
    
    var testCaseThree = [Int]()
    var testCaseFour = [Int]()
    var testArray = [Int]()
    
    init() {
        self.testCaseThree = [2,4,4,5,99,0] //2,4,4,5,99,9801 (99 * 99 = 9801).
        self.testCaseFour = [1,1,1,4,99,5,6,0,99] //30,1,1,4,2,5,6,0,99.
        self.testArray = intCodeProgram
        
        partOne()
        partTwo()
    }
    
    func partOne() {
        
        mainloop: for i in stride(from: 0, to: testArray.count, by: 4) {
            if (testArray[i] == 1) {
                //print("\(i) pos[\(testArray[i+3])] = value:\(testArray[i+1]) at \(testArray[testArray[i+1]]) + value:\(testArray[i+2]) at \(testArray[testArray[i+2]])")
                testArray[testArray[i+3]] = testArray[testArray[i+1]] + testArray[testArray[i+2]]
            } else if (testArray[i] == 2) {
                //print("\(i) pos[\(testArray[i+3])] = value:\(testArray[i+1]) at \(testArray[testArray[i+1]]) * value:\(testArray[i+2]) at \(testArray[testArray[i+2]])")
                testArray[testArray[i+3]] = testArray[testArray[i+1]] * testArray[testArray[i+2]]
            } else if (testArray[i] == 99) {
                print("Part One result: \(testArray[0])")
                break mainloop
            } else {
                print("Unknown instruction")
            }
        }
        
    }
    
    func partTwo() {
        let expecterOutput = 19690720
        
        for n in exerciseNoun...99 {
            for v in exerciseVerb...99 {
                let IterativeIntCodeProgram = [1,n,v,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,1,19,9,23,1,23,9,27,1,10,27,31,1,13,31,35,1,35,10,39,2,39,9,43,1,43,13,47,1,5,47,51,1,6,51,55,1,13,55,59,1,59,6,63,1,63,10,67,2,67,6,71,1,71,5,75,2,75,10,79,1,79,6,83,1,83,5,87,1,87,6,91,1,91,13,95,1,95,6,99,2,99,10,103,1,103,6,107,2,6,107,111,1,13,111,115,2,115,10,119,1,119,5,123,2,10,123,127,2,127,9,131,1,5,131,135,2,10,135,139,2,139,9,143,1,143,2,147,1,5,147,0,99,2,0,14,0]
                self.testArray = IterativeIntCodeProgram
                
                mainloop: for i in stride(from: 0, to: testArray.count, by: 4) {
                    if (testArray[i] == 1) {
                        testArray[testArray[i+3]] = testArray[testArray[i+1]] + testArray[testArray[i+2]]
                    } else if (testArray[i] == 2) {
                        testArray[testArray[i+3]] = testArray[testArray[i+1]] * testArray[testArray[i+2]]
                    } else if (testArray[i] == 99) {
                        if testArray[0]  == expecterOutput{
                            let output = (100 * n) + v
                            print ("Part two Output: \(output) \(testArray[0])")
                        }
                        break mainloop
                    } else {
                        print("Unknown instruction")
                    }
                }
                
            }
        }

    }
    
    
}
