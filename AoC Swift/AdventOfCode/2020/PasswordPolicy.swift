//
//  PasswordPolicy.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 02.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class PasswordPolicy {
    
    let passwordList: [String]
    var lowestNumber: Int
    var highestNumber: Int
    var password: String
    var letterToFind: String
    var validPasswordsPartOne: Int
    var validPasswordsPartTwo: Int
    
    init() {
        self.passwordList = Input2020d02.day02PasswordList.components(separatedBy: "\n").compactMap { String($0) }
        self.lowestNumber = 0
        self.highestNumber = 0
        self.password = ""
        self.letterToFind = ""
        self.validPasswordsPartOne = 0
        self.validPasswordsPartTwo = 0
        
        partOneAndTwo()
    }
    
    private func partOneAndTwo() {
        
        for p in passwordList {
            let separator = "\\-|\\s|\\:"
            let result = p.split(usingRegex: separator)
            
            lowestNumber = Int(result[0]) ?? 0
            highestNumber = Int(result[1]) ?? 0
            letterToFind = result[2]
            password = result[4]
            
            let insensitiveCount = password.lowercased().filter{ $0 == Character(String(letterToFind)) }.count
            
            // Part One
            if (insensitiveCount >= lowestNumber && insensitiveCount <= highestNumber) {
                validPasswordsPartOne+=1
            }
            
            // Part Two
            var countChars = 0
            let lowestChar = password[password.index(password.startIndex, offsetBy: lowestNumber-1)]
            let highesChar = password[password.index(password.startIndex, offsetBy: highestNumber-1)]
            
            (String(lowestChar) == letterToFind) ? (countChars+=1) : nil
            
            (String(highesChar) == letterToFind) ? (countChars+=1) : nil
            
            (countChars == 1) ? (validPasswordsPartTwo+=1) : nil

        }
        print("# Valid passwords (part 1): \(validPasswordsPartOne)")
        print("# Valid passwords (part 2): \(validPasswordsPartTwo)")
    }
        
}
