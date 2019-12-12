//
//  nineteenDayFive.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 10.12.19.
//  Copyright © 2019 Pereira Orlando. All rights reserved.
//

import Foundation

private var intCodeProgram = [3,225,1,225,6,6,1100,1,238,225,104,0,1001,152,55,224,1001,224,-68,224,4,224,1002,223,8,223,1001,224,4,224,1,224,223,223,1101,62,41,225,1101,83,71,225,102,59,147,224,101,-944,224,224,4,224,1002,223,8,223,101,3,224,224,1,224,223,223,2,40,139,224,1001,224,-3905,224,4,224,1002,223,8,223,101,7,224,224,1,223,224,223,1101,6,94,224,101,-100,224,224,4,224,1002,223,8,223,101,6,224,224,1,224,223,223,1102,75,30,225,1102,70,44,224,101,-3080,224,224,4,224,1002,223,8,223,1001,224,4,224,1,223,224,223,1101,55,20,225,1102,55,16,225,1102,13,94,225,1102,16,55,225,1102,13,13,225,1,109,143,224,101,-88,224,224,4,224,1002,223,8,223,1001,224,2,224,1,223,224,223,1002,136,57,224,101,-1140,224,224,4,224,1002,223,8,223,101,6,224,224,1,223,224,223,101,76,35,224,1001,224,-138,224,4,224,1002,223,8,223,101,5,224,224,1,223,224,223,4,223,99,0,0,0,677,0,0,0,0,0,0,0,0,0,0,0,1105,0,99999,1105,227,247,1105,1,99999,1005,227,99999,1005,0,256,1105,1,99999,1106,227,99999,1106,0,265,1105,1,99999,1006,0,99999,1006,227,274,1105,1,99999,1105,1,280,1105,1,99999,1,225,225,225,1101,294,0,0,105,1,0,1105,1,99999,1106,0,300,1105,1,99999,1,225,225,225,1101,314,0,0,106,0,0,1105,1,99999,1008,677,677,224,1002,223,2,223,1006,224,329,1001,223,1,223,8,677,226,224,102,2,223,223,1006,224,344,101,1,223,223,1107,226,226,224,1002,223,2,223,1006,224,359,1001,223,1,223,1108,677,226,224,102,2,223,223,1005,224,374,1001,223,1,223,1007,226,226,224,102,2,223,223,1006,224,389,1001,223,1,223,108,677,677,224,1002,223,2,223,1005,224,404,1001,223,1,223,1007,677,677,224,102,2,223,223,1005,224,419,1001,223,1,223,8,226,677,224,102,2,223,223,1005,224,434,101,1,223,223,1008,677,226,224,102,2,223,223,1006,224,449,1001,223,1,223,7,677,677,224,102,2,223,223,1006,224,464,1001,223,1,223,8,226,226,224,1002,223,2,223,1005,224,479,1001,223,1,223,7,226,677,224,102,2,223,223,1006,224,494,1001,223,1,223,7,677,226,224,1002,223,2,223,1005,224,509,101,1,223,223,107,677,677,224,102,2,223,223,1006,224,524,101,1,223,223,1007,677,226,224,102,2,223,223,1006,224,539,101,1,223,223,107,226,226,224,1002,223,2,223,1006,224,554,101,1,223,223,1008,226,226,224,102,2,223,223,1006,224,569,1001,223,1,223,1107,677,226,224,1002,223,2,223,1005,224,584,101,1,223,223,1107,226,677,224,102,2,223,223,1005,224,599,101,1,223,223,1108,226,677,224,102,2,223,223,1005,224,614,101,1,223,223,108,677,226,224,102,2,223,223,1005,224,629,101,1,223,223,107,226,677,224,102,2,223,223,1006,224,644,1001,223,1,223,1108,226,226,224,1002,223,2,223,1006,224,659,101,1,223,223,108,226,226,224,102,2,223,223,1005,224,674,101,1,223,223,4,223,99,226]

//private var intCodeProgram = [3,21,1008,21,8,20,1005,20,22,107,8,21,20,1006,20,31,1106,0,36,98,0,0,1002,21,125,20,4,20,1105,1,46,104,999,1105,1,46,1101,1000,1,20,4,20,1105,1,46,98,99]
//private var intCodeProgram = [1002,4,3,4,33]

enum Mode: Int {
    case position = 0
    case immediate = 1
}

class nineteenDayFive {
    
    let input: Int
    var stride: Int
    
    init() {
        stride = 0
        input = 5
        print(partOne(input: input))
    }
    
    func getValueReferencedByPosition(value: Int) -> Int {
        intCodeProgram[intCodeProgram[value]]
    }
    
    func getValueOfPosition(value: Int) -> Int {
        intCodeProgram[value]
    }
    
    func opCodeDecomposer(code: Int) -> (Int, Int, Int) {
        let opcode = code % 100
        let firstParam = (code / 100) % 10
        let secondParam = (code / 1000) % 10
        return (opcode, firstParam, secondParam)
    }
    
    func partOne(input: Int){
        
        var flag = true
        var output = input
        
        repeat {
            let intCode = opCodeDecomposer(code: intCodeProgram[stride])
            
            switch intCode.0 {
            case 99:
                print("Result: \(output)")
                flag = false
                // ABCDE
                //  1002
                // 1002,4,3,4,33
                
                // C - mode of 1st parameter,  0 == position mode
                // B - mode of 2nd parameter,  1 == immediate mode
                // A - mode of 3rd parameter,  0 == position mode
                
            case 1: // Sum
                let firstValue = (intCode.1 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+1) : getValueOfPosition(value: stride+1)
                let secondValue = (intCode.2 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+2) : getValueOfPosition(value: stride+2)
                let targetPosition = getValueOfPosition(value: stride+3)
                intCodeProgram[targetPosition] = firstValue + secondValue
                stride+=4
                
            case 2: // Mult
                let firstValue = (intCode.1 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+1) : getValueOfPosition(value: stride+1)
                let secondValue = (intCode.2 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+2) : getValueOfPosition(value: stride+2)
                let targetPosition = getValueOfPosition(value: stride+3)
                intCodeProgram[targetPosition] = firstValue * secondValue
                stride+=4
                
            case 3: // save
                intCodeProgram[intCodeProgram[stride+1]] = output
                stride+=2
                
            case 4: // load
                output = intCodeProgram[intCodeProgram[stride+1]]
                stride+=2
                
            case 5: // jump if true
                let firstValue = (intCode.1 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+1) : getValueOfPosition(value: stride+1)
                let secondValue = (intCode.2 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+2) : getValueOfPosition(value: stride+2)
                if firstValue != 0 {
                    stride = secondValue
                } else {
                    stride += 3
                }
            
            case 6: // jump if true
                let firstValue = (intCode.1 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+1) : getValueOfPosition(value: stride+1)
                let secondValue = (intCode.2 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+2) : getValueOfPosition(value: stride+2)
                if firstValue == 0 {
                    stride = secondValue
                } else {
                    stride += 3
                }
                
            case 7: // less than
                let firstValue = (intCode.1 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+1) : getValueOfPosition(value: stride+1)
                let secondValue = (intCode.2 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+2) : getValueOfPosition(value: stride+2)
                let targetPosition = getValueOfPosition(value: stride+3)
                if firstValue < secondValue {
                    intCodeProgram[targetPosition] = 1
                } else {
                    intCodeProgram[targetPosition] = 0
                }
                stride += 4
            
            case 8: //equals
                let firstValue = (intCode.1 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+1) : getValueOfPosition(value: stride+1)
                let secondValue = (intCode.2 == Mode.position.rawValue) ? getValueReferencedByPosition(value: stride+2) : getValueOfPosition(value: stride+2)
                let targetPosition = getValueOfPosition(value: stride+3)
                if firstValue == secondValue {
                    intCodeProgram[targetPosition] = 1
                } else {
                    intCodeProgram[targetPosition] = 0
                }
                stride += 4
                
            default:
                print("Unknown intruction")
            }
            
        } while (flag)
        
    }
    
}
