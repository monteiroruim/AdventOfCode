//
//  CustomsDeclaration.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 06.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation
import Cocoa

class CustomsDeclaration {
    var tempArray: [Character]
    var sumPartOne: Int
    var sumPartTwo: Int
    
    init () {
        let customsDeclaration: [String] = Inputs2020.day06CustomDeclarationsForm
        self.tempArray = ["."]
        self.sumPartOne = 0
        self.sumPartTwo = 0
        
        partOne(input: customsDeclaration)
        partTwo(input: customsDeclaration)
        partOneWithExternalFile()
    }
    
    func partTwo(input: [String]) {
        
        var groups = [[String]]()
        for a in input {
            groups.append(a.components(separatedBy: "\n"))
        }
        
        var unicos = [Set<String>]()
        for i in groups {
            unicos.append(Set(i))
        }
        
        // get number of the common answers in the groups
        let commons = unicos.map {
            $0.reduce(Set("abcdefghijklmnopqrstuvwxyz"), {
                $0.intersection($1)
            }).count
        }

        for sum in commons {
            self.sumPartTwo+=sum
        }
        print("Part 2 answer: \(self.sumPartTwo)")
    }
    
    func partOne(input: [String]) {
        
        for form in input {
            self.sumPartOne += Set(form.replacingOccurrences(of: "\n", with: "")).count
        }
        print("Part 1 answer: \(self.sumPartOne)")
    }
    
    func readAndProcessFile(_ path: String) -> Int {
        errno = 0
        if freopen(path, "r", stdin) == nil {
            perror(path)
            return 1
        }
        while let line = readLine() {
            //partOneExternalFile(strings: line)
            
            if (line.isEmpty) {
                self.sumPartOne+=(tempArray.count-1)
                self.tempArray = [":"]
            }
            for (j, _) in line.enumerated() {
                let char = line[line.index(line.startIndex, offsetBy: j)]
                (!tempArray.contains(char)) ? tempArray.append(char) : nil
            }
            
        }
        return 0
    }
    
    func partOneWithExternalFile() {
        self.sumPartOne = 0
        let path = "/Users/pereiro2/Developer/AdventOfCode/AoC Swift/AdventOfCode/2020/day06-customs.txt"
        (readAndProcessFile(path) == 1) ? print("Error reading ", path) : nil
        
        print("Part 1 answer: \(self.sumPartOne)")
    }
    
}
