//
//  TwentyOneDay18.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 21.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay21 {
    
    let startingPositions = In2021D21().getInput().split(separator: "\n").map { $0.last!.wholeNumberValue! }
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    struct Player: Hashable {
        var score = 0
        var position: Int
        
        mutating func move(by steps: Int) {
            position += steps
            if position > 10 {
                if position % 10 == 0 {
                    position = 10
                } else {
                    position = position % 10
                }
            }
            score += position
        }
    }
    
    private func PartOne() -> String {
        var die = 1
        var rolls = 0
        
        func next() -> Int {
            defer {
                die += 3
                die %= 10
                rolls += 3
            }
            return 3 * (die + 1)
        }
        
        var one = Player(position: startingPositions[0])
        var two = Player(position: startingPositions[1])
        var isPlayerOnesTurn = true
        
        while one.score < 1000 && two.score < 1000 {
            let score = next()
            if isPlayerOnesTurn {
                one.move(by: score)
            } else {
                two.move(by: score)
            }
            isPlayerOnesTurn.toggle()
        }
        
        return (min(one.score, two.score) * rolls).description
    }
    
    private func PartTwo() -> String {
        struct Game: Hashable {
            var one: Player
            var two: Player
            var isPlayerOnesTurn = true
            
            var aWins: Bool? {
                if one.score >= 21 { return true }
                if two.score >= 21 { return false }
                return nil
            }
            
            func next() -> [Game: Int] {
                var games: [Game: Int] = [:]
                [1, 2, 3].forEach { first in
                    [1, 2, 3].forEach { second in
                        [1, 2, 3].forEach { third in
                            let score = first + second + third
                            var copy = self
                            if copy.isPlayerOnesTurn {
                                copy.one.move(by: score)
                            } else {
                                copy.two.move(by: score)
                            }
                            copy.isPlayerOnesTurn.toggle()
                            games[copy, default: 0] += 1
                        }
                    }
                }
                return games
            }
            
            var totalScore: Int {
                one.score + two.score
            }
        }
        
        var seenGames: [Game: Bool] = [:]
        var aWins = 0
        var bWins = 0
        var games = [Game(one: Player(position: 5), two: Player(position: 6)): 1]
        
        while let (game, instances) = games.min(by: { $0.key.totalScore < $1.key.totalScore }) {
            games.removeValue(forKey: game)
            
            if let existing = seenGames[game] {
                if existing { aWins += instances }
                else { bWins += instances }
                continue
            }
            
            for (newGame, c) in game.next() {
                let newGameInstances = instances * c
                
                if let existing = seenGames[newGame] {
                    if existing { aWins += newGameInstances }
                    else { bWins += newGameInstances }
                    continue
                }
                
                if let winner = newGame.aWins {
                    seenGames[newGame] = winner
                    if winner { aWins += newGameInstances }
                    else { bWins += newGameInstances }
                    continue
                }
                
                games[newGame, default: 0] += newGameInstances
            }
        }
        
        return max(aWins, bWins).description
    }

    private func Tests() {
        assert(PartOne() == "1002474", "PartOne KO")
        assert(PartTwo() == "919758187195363", "PartTwo KO")
    }
    
}
