//
//  TwentyTwoDay11.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 08.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

struct Monkey: Hashable {
    var index: Int
    var items: [Int]
    
    var operationAdd: Bool
    var operatorMultiply: Int
    var operatorSquare: Bool
    
    
    var test: Int
    var throwToIfTrue: Int
    var throwToIfFalse: Int
}

class TwentyTwoDay11 {
    
    private var input: String
    private var monkeys: [Monkey]
    
    public init() {
        
        self.input = In2022D11().getInput()
        self.monkeys = [Monkey]()
        self.monkeys = self.input.components(separatedBy: "\n\n").map{parseMonkey($0)}
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    func parseMonkey(_ text: String) -> Monkey {
        let monkey = text.components(separatedBy: CharacterSet.newlines)
        return Monkey(
            index: Int(monkey[0].split(separator: " ").last!.dropLast(1))!,
            items: monkey[1].split(whereSeparator: { $0.isNumber == false }).map { Int($0)! },
            operationAdd: monkey[2].contains("+"),
            operatorMultiply: monkey[2].hasSuffix("old") ? 1 : Int(monkey[2].split(separator: " ").last!)!,
            operatorSquare: monkey[2].hasSuffix("old"),
            test: Int(monkey[3].split(separator: " ").last!)!,
            throwToIfTrue: Int(monkey[4].split(separator: " ").last!)!,
            throwToIfFalse: Int(monkey[5].split(separator: " ").last!)!
        )
    }
    
    func PartOne() -> Int {
        return solve(self.monkeys, 20, true)
    }
    
    private func PartTwo() -> Int {
        return solve(self.monkeys, 10000, false)
    }
    
    func solve(_ data: [Monkey], _ rounds: Int, _ reduceWorries: Bool) -> Int {
        
        var monkeys = data
        var divisor = 1
        
        for m in monkeys {
            divisor *= m.test
        }
        
        var inspections: [Int: Int] = [:]
        
        for _ in 1 ... rounds {
            for i in monkeys.indices {
                while var item = monkeys[i].items.first {
                    let c = monkeys[i]
                    monkeys[i].items.removeFirst()
                    
                    item = {
                        let operand = c.operatorSquare ? item : c.operatorMultiply
                        return c.operationAdd ? item + operand : item * operand
                    }()
                    
                    reduceWorries ? (item /= 3) : (item %= divisor)
                    item.isMultiple(of: c.test) ? monkeys[c.throwToIfTrue].items.append(item) : monkeys[c.throwToIfFalse].items.append(item)
                    
                    inspections[i, default: 0] += 1
                }
            }
        }
        
        return inspections.values.max(count: 2).reduce(1, *)
    }
    
    
    private func Tests() {
        assert(PartOne() == 90882, "Part 1 KO")
        assert(PartTwo() == 30893109657, "Part 2 KO")
    }
    
}
