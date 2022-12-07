//
//  TwentyTwoDay05.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 05.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation
import Collections

class TwentyTwoDay05 {
    
    private var input: [String]
    
    public init() {
        self.input = In2022D05().getInput().components(separatedBy: "\n\n")
        
        print("puzzle answer (part 1): \(PartOne("9000"))")
        print("puzzle answer (part 2): \(PartOne("9001"))")
        Tests()
    }
    
    private func PartOne(_ crane: String) -> String {
        var result = ""
        var stacks = parseStacks(from: self.input.first!)
        let instructions = self.input.last!.components(separatedBy: CharacterSet.newlines)
        
        for i in instructions {
            let op = i.components(separatedBy: " ")
            let amount = Int(op[1])!
            let from = Int(op[3])!
            let to = Int(op[5])!
            
            if crane == "9001" {
                let values = stacks[from]!.suffix(amount)
                stacks[from]!.removeLast(amount)
                stacks[to]!.append(contentsOf: values)
            } else {
                for _ in 0..<amount {
                    let value = stacks[from]!.popLast()!
                    stacks[to]?.append(value)
                }
            }
               
        }

        for i in stacks.keys.sorted() {
            result += stacks[i]!.last!.description
        }
        return result
    }
    
    func parseStacks(from input: String) -> [Int: [Character]] {
        input
            .split(separator: "\n")
            .reduce(into: [Int: [Character]]()) { stacks, line in
                for (i, c) in line.enumerated() {
                    guard c.isLetter else { continue }
                    let stackNumber = (i / 4) + 1
                    stacks[stackNumber, default: []].insert(c, at: 0)
                }
            }
    }

    private func Tests() {
        assert(PartOne("") == "ZRLJGSCTR", "Part 1 KO")
        assert(PartOne("9000") == "PRTTGRFPB", "Part 2 KO")
    }
    
}
