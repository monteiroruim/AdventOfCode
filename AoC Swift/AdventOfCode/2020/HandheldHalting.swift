//
//  HandheldHalting.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 08.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class HandheldHalting {
    
    var operationList: [String]

    init() {
        self.operationList = Inputs2020.day08HandheldHalting.components(separatedBy: "\n")
        
        partOne(list: self.operationList)
        partTwoB(list: self.operationList)
    }
    
    func partTwoB(list: [String]) {
        var acc = 0
        var lineCount = 0
        var found = false
        var visitedPositions = Set<Int>()
        var currendChangedPosition = 0
        var listOfInstructions = [(String,Int)]()
        
        for l in list {
            let object = l.split(separator: " ")
            listOfInstructions.append((String(object[0]), Int(object[1])!))
        }
        
        for _ in listOfInstructions {
            
            var swapInstruction = listOfInstructions
            let op = listOfInstructions[currendChangedPosition].0
            
            switch op {
            case "nop" :
                swapInstruction[currendChangedPosition].0 = "jmp"
                break
            case "jmp":
                swapInstruction[currendChangedPosition].0 = "nop"
                break
            default:
                break
            }
            currendChangedPosition += 1
            
            acc = 0
            visitedPositions.removeAll()
            lineCount = 0
            
            while !found {
                if lineCount < swapInstruction.count {

                    let op = swapInstruction[lineCount].0
                    let num = swapInstruction[lineCount].1
                    
                    if !visitedPositions.contains(lineCount) {
                        visitedPositions.insert(lineCount)
                        
                        switch op {
                        case "acc":
                            acc += num
                            lineCount += 1
                            
                        case "jmp":
                            lineCount += num
                            
                        case "nop":
                            lineCount += 1
                            
                        default:
                            break
                        }
                    } else {
                        break
                    }
                } else {
                    found = true
                    print("Part 2 answer: \(acc)")
                    break
                }
            }
        }
        
    }
    
    func partOne(list: [String]) {
        var acc = 0
        var flag = true
        var visitedPositions = Set<Int>()
        var listOfInstrctions = [(String,Int)]()
        var currentPosition = 0
        
        for l in list {
            let object = l.split(separator: " ")
            listOfInstrctions.append((String(object[0]), Int(object[1])!))
        }
        
        while (flag) {
            let op = listOfInstrctions[currentPosition].0
            let num = listOfInstrctions[currentPosition].1
            
            switch op {
            case "nop":
                currentPosition+=1
            case "acc":
                acc+=num
                currentPosition+=1
            case "jmp":
                currentPosition+=num
            default:
                print("default")
            }
            
            if (!visitedPositions.contains(currentPosition)) {
                visitedPositions.insert(currentPosition)
            } else {
                flag = false
            }
        }
        print("Part 1 answer: \(acc)")
    }
    
}
