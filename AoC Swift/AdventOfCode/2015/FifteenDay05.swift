//
//  FifteenDay05.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 22.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class FifteenDay05 {
    
    let strings = In2015D05().input.components(separatedBy: "\n")
    
    init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
    }
    
    let vowelsChar = CharacterSet.init(charactersIn: "aeiou")
    
    private func isNicePartOne(string: String) -> Bool {
        var flagCount = false, flagDouble = false, flagNaughty = false
        
        // It contains at least three vowels
        let match = string.unicodeScalars.filter{ word in
            vowelsChar.contains(word)
        }
        (match.description.count > 2) ? flagCount = true : nil
    
        /*
         It contains at least one letter that appears twice in a row,
         like xx, abcdde (dd), or aabbccdd (aa, bb, cc, or dd).
         */
        var letter: Character = " "
        for (i, chars) in string.enumerated() {
            if (i > 0 && letter == chars) {
                    flagDouble = true
            }
            letter = chars
        }
        
        // contain the strings ab, cd, pq, or xy
        (string.contains("ab") || string.contains("cd") || string.contains("pq") || string.contains("xy")) ? flagNaughty = true : nil
        
        return (flagCount && flagDouble && !flagNaughty)
    }
    
    private func isNicePartTwo(string: String) -> Bool {
        var flagTwoLetters = false, flagRepeats = false
        
        /*
         It contains a pair of any two letters that appears at least twice
         in the string without overlapping, like xyxy (xy) or aabcdefgaa (aa),
         but not like aaa (aa, but it overlaps).
         */
        for i in 0...string.count-4 {
            let indexOne = string.index(string.startIndex, offsetBy: i)
            let indexTwo = string.index(string.startIndex, offsetBy: i + 1)
                        
            let charOne = string[indexOne]
            let charTwo = string[indexTwo]

            for j in i+2...string.count-2 {
                let indexThree = string.index(string.startIndex, offsetBy: j )
                let indexFour = string.index(string.startIndex, offsetBy: j + 1)
                let charThree = string[indexThree]
                let charFour = string[indexFour]
                
                (charOne == charThree && charTwo == charFour) ? flagTwoLetters = true : nil
            }
        }
        
        // It contains at least one letter which repeats with exactly one letter between them
        for (i, chars) in string.enumerated() {
            for (j, subChar) in string.enumerated() where j > i+1 {
                (chars == subChar) ? flagRepeats = true : nil
                break
            }
        }
        
        return (flagTwoLetters && flagRepeats)
    }
        
    private func PartOne() -> Int{
        var niceCount = 0
        
        strings.forEach {
            (isNicePartOne(string: $0)) ? niceCount += 1 : nil
        }
        return niceCount
    }
    
    private func PartTwo() -> Int {
        var niceCount = 0
        
        strings.forEach {
            (isNicePartTwo(string: $0)) ? niceCount += 1 : nil
        }
        
        return niceCount
    }
    
}
