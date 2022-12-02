//
//  TwentyTwoDay02.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 01.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay02 {
    
    private var input: [String]
    
    public init() {
        self.input = In2022D02().getInput().components(separatedBy: CharacterSet.newlines)
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        //Tests()
    }
    
    // A for Rock, B for Paper, and C for Scissors.
    // X for Rock, Y for Paper, and Z for Scissors
    // 1 for Rock, 2 for Paper, and 3 for Scissors)
    // (0 if you lost, 3 if the round was a draw, and 6 if you won).
    private func PartOne() -> Int {
        var sum = 0
        for i in self.input {
            let line = i.components(separatedBy: " ")
            if line[0] == "A" {
                if line[1] == "X" {
                    sum += 1 + 3
                } else if line[1] == "Y" {
                    sum += 2 + 6
                } else if line[1] == "Z" {
                    sum += 3 + 0
                }
            } else if line[0] == "B" {
                if line[1] == "Y" {
                    sum += 2 + 3
                } else if line[1] == "Z" {
                    sum += 3 + 6
                } else if line[1] == "X" {
                    sum += 1 + 0
                }
            } else if line[0] == "C" {
                if line[1] == "Z" {
                    sum += 3 + 3
                } else if line[1] == "X" {
                    sum += 1 + 6
                } else if line[1] == "Y" {
                    sum += 2 + 0
                }
            }
        }
        
        return sum
    }
    
    //the second column says how the round needs to end:
    // X means you need to lose, Y means you need to end the round in a draw, and Z means you need to win.
    private func PartTwo() -> Int {
        var sum = 0
        for i in self.input {
            let line = i.components(separatedBy: " ")
            
            if line[0] == "A" {
                if line[1] == "Y" {
                    sum += 1 + 3
                } else if line[1] == "X" {
                    sum += 3 + 0
                } else if line[1] == "Z" {
                    sum += 2 + 6
                }
            } else if line[0] == "B" {
                if line[1] == "Y" {
                    sum += 2 + 3
                } else if line[1] == "Z" {
                    sum += 3 + 6
                } else if line[1] == "X" {
                    sum += 1 + 0
                }
            } else if line[0] == "C" {
                if line[1] == "Z" {
                    sum += 1 + 6
                } else if line[1] == "X" {
                    sum += 2 + 0
                } else if line[1] == "Y" {
                    sum += 3 + 3
                }
            }
        }
        return sum
    }

    private func Tests() {
        assert(PartOne() == 15572, "PartOne KO")
        assert(PartTwo() == 16098, "PartTwo KO")
    }
    
}
