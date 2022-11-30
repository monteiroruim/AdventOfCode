//
//  TwentyOneDay08.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 08.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation
import OpenGL

class TwentyOneDay08 {
    
    private var input: [String] = In2021D08().getInputDebug().components(separatedBy: CharacterSet.newlines)
    
    public init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
        Tests()
    }
    
    private func PartOne() -> Int {
        
        var count = 0
        for (_, n) in input.enumerated() {
            let d = n.components(separatedBy: " | ")
            let digits = d[1].components(separatedBy: CharacterSet.whitespaces)
            
            for (_, dig) in digits.enumerated() {
                (dig.count == 2 ) ? count = count + 1 : nil // 1
                (dig.count == 3 ) ? count = count + 1 : nil // 7
                (dig.count == 4 ) ? count = count + 1 : nil // 4
                (dig.count == 7 ) ? count = count + 1 : nil // 8
            }
        }
        return count
    }
    
    /*
     0:      1:      2:      3:      4:
    aaaa    ....    aaaa    aaaa    ....
   b    c  .    c  .    c  .    c  b    c
   b    c  .    c  .    c  .    c  b    c
    ....    ....    dddd    dddd    dddd
   e    f  .    f  e    .  .    f  .    f
   e    f  .    f  e    .  .    f  .    f
    gggg    ....    gggg    gggg    ....

     5:      6:      7:      8:      9:
    aaaa    aaaa    aaaa    aaaa    aaaa
   b    .  b    .  .    c  b    c  b    c
   b    .  b    .  .    c  b    c  b    c
    dddd    dddd    ....    dddd    dddd
   .    f  e    f  .    f  e    f  .    f
   .    f  e    f  .    f  e    f  .    f
    gggg    gggg    ....    gggg    gggg
     */
    private func PartTwo() -> Int {
        var zero = ""
        var one = ""
        var two = ""
        var three = ""
        var four = ""
        var five = ""
        var six = ""
        var seven = ""
        var eight = ""
        var nine = ""
        
//        input = ["acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb eafb cagedb ab | cdfeb fcadb cdfeb cdbaf"]
        for (_, n) in input.enumerated() {
            let d = n.components(separatedBy: " | ")
            let digits = d[0].components(separatedBy: CharacterSet.whitespaces)
            
            for (_, dig) in digits.enumerated() {
                (dig.count == 2 ) ? one = dig : nil
                (dig.count == 3 ) ? seven = dig : nil
                (dig.count == 4 ) ? four = dig : nil
                (dig.count == 7 ) ? eight = dig : nil
            }
            
            for (_, dig) in digits.enumerated() {
                let t = Set(dig)
                
                let db = Set(four).subtracting(Set(one))
                
                (dig.count == 5 && t.isSuperset(of: db)) ? five = dig : nil // 5
                (dig.count == 5 && t.isSuperset(of: one)) ? three = dig : nil //3
                (dig.count == 5 && t != Set(five) && t != Set(three) ) ? two = dig : nil //3
                
                let nineTemp = Set(seven + four)
                (dig.count == 6 && t.intersection(nineTemp).count == 5) ? nine = dig : nil //9
                
                let c = Set(nine).subtracting(Set(five))
                (dig.count == 6 && t.isDisjoint(with: c)) ? six = dig : nil // 6
                (dig.count == 6 && t != Set(six) && t != Set(nine) ) ? zero = dig : nil // 0
            }
            //print("0:",zero, "1:",one, "2:",two, "3:",three, "4:",four, "5:",five, "6:",six, "7:",seven, "8:",eight, "9:",nine)
        
        }
        
        var count = 0
        for (_, t) in input.enumerated() {
            let d = t.components(separatedBy: " | ")
            let digits = d[1].components(separatedBy: CharacterSet.whitespaces)
            var countTemp = ""
            for (_, dig) in digits.enumerated() {
                Set(dig) == Set(zero) ? countTemp += "0" : nil
                Set(dig) == Set(one) ? countTemp += "1" : nil
                Set(dig) == Set(two) ? countTemp += "2" : nil
                Set(dig) == Set(three) ? countTemp += "3" : nil
                Set(dig) == Set(four) ? countTemp += "4" : nil
                Set(dig) == Set(five) ? countTemp += "5" : nil
                Set(dig) == Set(six) ? countTemp += "6" : nil
                Set(dig) == Set(seven) ? countTemp += "7" : nil
                Set(dig) == Set(eight) ? countTemp += "8" : nil
                Set(dig) == Set(nine) ? countTemp += "9" : nil
            }
            count = count + Int(countTemp)!
        }
     
        return count
    }

    private func Tests() {
        assert(PartOne() == 530, "PartOne KO")
        //assert(PartTwo() == 0, "PartTwo KO")
    }
    
}
