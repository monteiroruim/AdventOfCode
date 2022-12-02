//
//  TwentyTwoDay02.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 01.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

private enum Move: Int {
    case rock = 1
    case paper = 2
    case scissor = 3
    
    init(_ c: String) {
        switch c {
        case "A", "X": self = .rock
        case "B", "Y": self = .paper
        case "C", "Z": self = .scissor
        default: fatalError("Wrong char")
        }
    }
    
    func against(_ otherMove: Move) -> Winner {
        switch (self, otherMove) {
        case (.rock, .rock), (.paper, .paper), (.scissor, .scissor):
            return .draw
        case (.rock, .scissor), (.scissor, .paper), (.paper, .rock):
            return .win
        case (.scissor, .rock), (.paper, .scissor), (.rock, .paper):
            return .lose
        }
    }
    
    func winningMove() -> Move {
        Move(rawValue: rawValue == 3 ? 1 : rawValue + 1)!
    }
}

private enum Winner: Int {
    case win = 6
    case draw = 3
    case lose = 0
    
    init(_ c: String) {
        switch c {
        case "Z": self = .win
        case "Y": self = .draw
        case "X": self = .lose
        default: fatalError("Wrong char")
        }
    }
    
}

class TwentyTwoDay02 {
    
    private var input: [String]
    
    public init() {
        self.input = In2022D02().getInput().components(separatedBy: CharacterSet.newlines)
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        var sum = 0
        for i in self.input {
            let line = i.components(separatedBy: " ")
            let other = Move(line.first!)
            let you = Move(line.last!)
            sum += you.against(other).rawValue + you.rawValue
        }
        return sum
    }
    
    private func PartTwo() -> Int {
        var sum = 0
        for i in self.input {
            let line = i.components(separatedBy: " ")
            let other = Move(line.first!)
            let result = Winner(line.last!)

            let yourScore: Int = {
                switch result {
                case .draw:
                    return other.rawValue
                case .lose:
                    return other.winningMove().winningMove().rawValue
                case .win:
                    return other.winningMove().rawValue
                }
            }()
            sum += yourScore + result.rawValue
        }
        return sum
    }
    
    private func Tests() {
        assert(PartOne() == 15572, "PartOne KO")
        assert(PartTwo() == 16098, "PartTwo KO")
    }
    
}
