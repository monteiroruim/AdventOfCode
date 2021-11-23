//
//  FifteenDay05.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 22.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class FifteenDay05 {
    
    init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
    }
    
    private func isNicePartOne(string: String) -> Bool {
        var countVowels = 0
        var flagCount = false
        var flagDouble = false
        var flagNaughty = false
        
        // It contains at least three vowels
        for (_, chars) in string.enumerated() {
            if (chars == ("a")) || (chars == ("e")) || (chars == ("i")) || (chars == ("o")) || (chars == ("u")) {
                countVowels = countVowels + 1
            }
        }
        if (countVowels > 2) {
            flagCount = true
        }
    
        //It contains at least one letter that appears twice in a row, like xx, abcdde (dd), or aabbccdd (aa, bb, cc, or dd).
        var letter: Character = "."
        for (i, chars) in string.enumerated() {
            if (i > 0 && letter == chars) {
                    flagDouble = true
            }
            letter = chars
        }
        
        // contain the strings ab, cd, pq, or xy
        if (string.contains("ab")) || (string.contains("cd")) || (string.contains("pq")) || (string.contains("xy")) {
            flagNaughty = true
        }
        
        if (flagCount && flagDouble && !flagNaughty) {
            return true
        } else {
            return false
        }
    }
    
    private func isNicePartTwo(string: String) -> Bool {
        var flagTwoLetters = false
        var flagRepeats = false
        //print("Working: ", string)
        
        /* It contains a pair of any two letters that appears at least twice in the string without
         overlapping, like xyxy (xy) or aabcdefgaa (aa), but not like aaa (aa, but it overlaps). */
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
                
                if (charOne == charThree && charTwo == charFour){
                    flagTwoLetters = true
                }
                
            }
        }
        
        //It contains at least one letter which repeats with exactly one letter between them,
        //like xyx, abcdefeghi (efe), or even aaa.
        for (i, chars) in string.enumerated() {
            for (j, subChar) in string.enumerated() where j > i+1 {
                if (chars == subChar) {
                    flagRepeats = true
                }
                break
            }
        }
        
        if (flagTwoLetters && flagRepeats) {
            return true
        } else {
            return false
        }
    }
        
    /*
     ugknbfddgicrmopn   is nice because it has at least three vowels and a double letter
     aaa                is nice because it has at least three vowels and a double letter
     jchzalrnumimnmhp   is naughty because it has no double letter.
     haegwjzuvuyypxyu   is naughty because it contains the string xy.
     dvszwmarrgswjxmb   is naughty because it contains only one vowel.
     */
    private func PartOne() -> Int{
        let strings = Input2015D05.strings.split(usingRegex: "\n")
        var niceCount = 0
        
        for i in strings {
            if (isNicePartOne(string: i)) {
                niceCount = niceCount + 1
            }
        }
        return niceCount
    }
    
    /*
     qjhvhtzxzqqjkmpb   is nice because is has a pair that appears twice (qj)
                        and a letter that repeats with exactly one letter between them (zxz).
     xxyxx              is nice because it has a pair that appears twice
                        and a letter that repeats with one between, even though the letters used by each rule overlap.
     uurcxstgmygtbstg   is naughty because it has a pair (tg) but no repeat with a single letter between them.
     ieodomkazucvgmuy   is naughty because it has a repeating letter with one between (odo), but no pair that appears twice.
     */
    private func PartTwo() -> Int {
        let strings = Input2015D05.strings.split(usingRegex: "\n")
        var niceCount = 0
        
        for i in strings {
            if (isNicePartTwo(string: i)) {
                niceCount = niceCount + 1
            }
        }
        return niceCount
    }
    
}
