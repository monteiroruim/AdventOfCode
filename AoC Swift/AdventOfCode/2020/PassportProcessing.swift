//
//  PassportProcessing.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 04.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class PassportProcessing {
    
    var passportList: [String]
    
    init() {
        self.passportList = Inputs2020.day04PassportList
        partOne()
    }
    
    func checkPassportValidityPartOne(passports: [String]) -> Bool{
        var isValid = false
        let separator = "\\:"
        var sum = 0
        
        for i in passports {
            let result = i.split(usingRegex: separator)
            switch result[0] {
            case "byr":
                sum+=1
            case "iyr":
                 sum+=1
            case "eyr":
                sum+=1
            case "hgt":
                sum+=1
            case "hcl":
                sum+=1
            case "ecl":
                sum+=1
            case "pid":
                sum+=1
            default:
                isValid = false
            }
        }
        (sum==7) ? (isValid=true) : nil
        return isValid
    }
    
    func checkPassportValidityPartTwo(passports: [String]) -> Bool{
        let separator = "\\:"
        var isValid = false
        var sum=0
        
        for i in passports {
            let result = i.split(usingRegex: separator)
            switch result[0] {
            case "byr":
                let value = Int(result[1])!
                (value >= 1920 && value <= 2002) ? sum+=1 : nil
            case "iyr":
                let value = Int(result[1])!
                (value >= 2010 && value <= 2020) ? sum+=1 : nil
            case "eyr":
                let value = Int(result[1])!
                (value >= 2020 && value <= 2030) ? sum+=1 : nil
            case "hgt":
                let number = Int(result[1].isNumericalOnly)!
                let type = result[1].isLettersOnly //tratar este cm21
                if (type == "cm") {
                    (number >= 150 && number <= 193) ? sum+=1 : nil
                }
                if (type == "in") {
                    (number >= 59 && number <= 76) ? sum+=1 : nil
                }
            case "hcl":
                if (result[1].contains("#")) {
                    let value = result[1].split(separator: "#")
                    let toCheck = String(value[0])
                    ((toCheck.isNumericalOnly.count + toCheck.isLettersSubSetOnly.count) == 6) ? sum+=1 : nil
                }
            case "ecl":
                let value = result[1]
                (value.contains("amb") || value.contains("blu") || value.contains("brn") || value.contains("gry") || value.contains("grn") || value.contains("hzl") || value.contains("oth") ) ? sum+=1 : nil
            case "pid":
                let value = result[1]
                (value.isNumericalOnly.count == 9) ? sum+=1 : nil
            default:
                isValid = false
            }
        }
        (sum==7) ? (isValid=true) : (isValid=false)
        return isValid
    }
    
    func partOne() {
        var partOneTotal = 0
        var partTwoTotal = 0
        
        for i in self.passportList {
            let uniquePassport = i.components(separatedBy: .whitespacesAndNewlines).compactMap{ String($0) }
            
            if (uniquePassport.count > 6) {
                if (checkPassportValidityPartOne(passports: uniquePassport)) {
                    partOneTotal += 1
                }
                if (checkPassportValidityPartTwo(passports: uniquePassport)) {
                    partTwoTotal += 1
                }
            }
        }
        print("Part 1 result: \(partOneTotal)")
        print("Part 2 result: \(partTwoTotal)")
    }
}
