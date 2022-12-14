//
//  TwentyTwoDay13.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 08.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay13 {
    
    enum OrderOfInterval : Int {
        case ascending = 1
        case descending = -1
        case equal = 0
    }
    
    private var input: [String]
    
    public init() {
        
        self.input = In2022D13().getInput().components(separatedBy: "\n\n")
        
        print("puzzle answer (part 1): \(PartOne().0)")
        print("puzzle answer (part 2): \(PartOne().1)")
        Tests()
    }
    
    
    func PartOne() -> (Int,Int) {
        
        var sum = 0
        let firstDivider = [[2]] as [Any]
        let secondDivider = [[6]] as [Any]
        var allPackets = [firstDivider, secondDivider]
        
        for (i,l) in self.input.enumerated() {
            let lists = l.components(separatedBy: .whitespacesAndNewlines)
            let left = try! JSONSerialization.jsonObject(with: Data(lists.first!.utf8)) as! [Any]
            let right = try! JSONSerialization.jsonObject(with: Data(lists.last!.utf8)) as! [Any]
            
            if compareLists(left,right) == .ascending { sum += i+1 }
            
            allPackets.append([left])
            allPackets.append([right])
        }
        // part 2
        allPackets.sort { compareLists($0, $1) == .ascending }
        
        let firstIndex = (allPackets.firstIndex { compareLists(firstDivider, $0) == .equal }! + 1)
        let secondIndex = (allPackets.firstIndex { compareLists(secondDivider, $0) == .equal }! + 1)
                
        return (sum, firstIndex * secondIndex)
    }
    
    private func compareLists(_ first: [Any], _ second: [Any]) -> OrderOfInterval {
        var i = 0
        while i < first.count, i < second.count {
            if let f = first[i] as? Int, let s = second[i] as? Int { // [INT][INT]
                if f != s {
                    return (f < s) ? .ascending : .descending
                }
            } else if let f = first[i] as? [Any], let s = second[i] as? [Any] { // 2 [ANY],[ANY]
                let compare = compareLists(f, s)
                if compare != .equal {
                    return compare
                }
            } else if let f = first[i] as? [Any] { //[ANY], ...
                return compareLists(f, [second[i]])
            } else if let s = second[i] as? [Any] { // ...,[ANY]
                return compareLists([first[i]], s)
            }
            i += 1
        }
        
        if i < first.count {
            return .descending
        } else if i < second.count {
            return .ascending
        } else {
            return .equal
        }
    }
    
    private func Tests() {
        assert(PartOne().0 == 5013, "Part 1 KO")
        assert(PartOne().1 == 25038, "Part 2 KO")
    }
    
}
