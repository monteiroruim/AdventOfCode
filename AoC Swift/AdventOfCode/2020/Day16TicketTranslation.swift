//
//  Day16TicketTranslation.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 17.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class Day16TicketTranslation {
    
    var input = Input2020d16.ticketTranslation
    var rules: [Rule]
    var ticket: [Int]
    var nearby: [[Int]]
    
    struct Rule: Hashable {
        let key: String
        let lower1, lower2, upper1, upper2: Int
        
        init(_ str: String) {
            key = String(str.prefix { $0 != ":" })
            
            let regex = try! NSRegularExpression(pattern: #"\d+"#)
            let range = NSRange(location: 0, length: str.utf16.count)
            let matches = regex.matches(in: str, options: [], range: range)
            lower1 = Int(str[Range(matches[0].range, in: str)!])!
            upper1 = Int(str[Range(matches[1].range, in: str)!])!
            lower2 = Int(str[Range(matches[2].range, in: str)!])!
            upper2 = Int(str[Range(matches[3].range, in: str)!])!
        }
        
        func isValid(_ int: Int) -> Bool {
            (int >= lower1 && int <= upper1) || (int >= lower2 && int <= upper2)
        }
    }
    
    
    init () {
        self.rules = []
        self.ticket = []
        self.nearby = []
        
        parseInput(data: self.input)
        partOne()
        partTwo()
    }
    
    func partTwo() {
        // 1. Discard all invalid tickets
        let valid = nearby
            .filter { ticket in ticket.allSatisfy { value in rules.contains { rule in rule.isValid(value) }} }
        
        // 2. Find the eligible rules for each 'value-index'
        let numberOfValues = valid.first!.count
        var eligible = [Rule: [Int]]()
        (0 ..< numberOfValues).forEach { index in
            let valuesAtIndex = valid.map { $0[index] }
            let validRulesAtIndex = rules.filter { rule in valuesAtIndex.allSatisfy { value in rule.isValid(value) }}
            
            for rule in validRulesAtIndex {
                eligible[rule] = (eligible[rule] ?? []) + [index]
            }
        }
        
        // 3. Make each eligible set as small as possbible by eliminating all
        //    indexes that only have one possible rule.
        //    Repeat #3 until fields are found (have only one eligible rule)
        while !eligible.values.allSatisfy({ $0.count == 1 }) {
            // this can be quicker, by removing the rules with only one option
            // from the eligible and putting then in a seperate dictionary
            let allSingles = eligible.values
                .filter { values in values.count == 1 }.flatMap { $0 }
            
            // eliminate all found indexes from the rules, skipping the ones
            // that only have one option; they're done already
            for key in eligible.filter({ $0.value.count != 1 }).keys {
                eligible[key] = eligible[key]!.filter { !allSingles.contains($0) }
            }
        }
        
        let answer = eligible
            .filter { $0.key.key.hasPrefix("departure") }
            .values
            .flatMap { $0 }
            .reduce(1) { $0 * ticket[$1] }
        print("Part 2 answer \(answer)")
    }
    
    func partOne() {
        //print(nearby.flatMap { $0 }.filter { value in !rules.contains { rule in rule.isValid(value) } }.reduce(0, +))
        let array = nearby.flatMap { $0 }
        var invalid = 0
        var answer = 0
        for i in 0 ... array.count-1 {
            for (_, rule) in rules.enumerated() {
                if (!rule.isValid(array[i])) {
                    invalid += 1
                }
            }
            if (invalid == rules.count) {
                answer += Int(array[i])
            }
            invalid = 0
        }
        
        print("Part 1 answer \(answer)")
    }
    
    func parseInput(data: String) {
        let parts = input
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .components(separatedBy: "\n\n")
        
        rules = parts[0].components(separatedBy: .newlines).map(Rule.init)
        
        ticket = parts[1]
            .components(separatedBy: .newlines)
            .last!
            .components(separatedBy: ",")
            .compactMap(Int.init)
        
        nearby = parts[2]
            .components(separatedBy: .newlines)
            .dropFirst()
            .map {
                $0.components(separatedBy: ",").compactMap(Int.init)
            }
    }
    
}
