//
//  FifteenDay07.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 26.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class FifteenDay07 {
    
    private var input = [String]()
    private var wires: [String : Int] = [:]
    private var wiresCheck: [String : Int] = [:]
    
    public init() {
        self.input = In2015D07().input.components(separatedBy: "\n")
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())")
    }
    
    private func calculateWires(in: [String], part: Int) -> Int {
        
        for i in self.input {
            if (!i.contains("AND") && !i.contains("OR") && !i.contains("LSHIFT") && !i.contains("RSHIFT") &&
                !i.contains("NOT")) {
                let v = i.components(separatedBy: " -> ")
                let wire = v[1]
                let value = v[0]
                
                if (Int(value) != nil) {
                    wires[wire] = Int(value)!
                    wiresCheck[wire] = 1
                } else {
                    wiresCheck[wire] = 0
                }
            }
        }
        
        if (part == 2) {
            wires["b"] = 46065 // call P
            wiresCheck["b"] = 1 
        }
        
        while (wires["lx"] == nil ) {
            
            for i in self.input {
                if (i.contains("AND")) {
                    let v = i.components(separatedBy: CharacterSet.whitespaces)
                    let first = v[0]
                    let second = v[2]
                    let wire = v[4]
                    
                    if (Int(first) != nil && (wiresCheck[second] == 1)) {
                        wires[wire] = Int(first)! & Int(wires[second]!)
                        wiresCheck[wire] = 1
                    }
                    if (wiresCheck[first] == 1 && wiresCheck[second] == 1) {
                        wires[wire] = Int(wires[first]!) & Int(wires[second]!)
                        wiresCheck[wire] = 1
                    }
                }
                
                let v = i.components(separatedBy: CharacterSet.whitespaces)
                if (i.contains("OR")) {
                    let first = v[0]
                    let second = v[2]
                    let wire = v[4]
                    if (wiresCheck[first] == 1 && wiresCheck[second] == 1) {
                        wires[wire] = Int(wires[first]!) | Int(wires[second]!)
                        wiresCheck[wire] = 1
                    }
                }
                if (i.contains("LSHIFT")) {
                    let shift = Int(v[2])!
                    let wire = v[4]
                    if (wiresCheck[v[0]] == 1) {
                        wires[wire] = wires[v[0]]! << shift
                        wiresCheck[wire] = 1
                    }
                }
                if (i.contains("RSHIFT")) {
                    let shift = Int(v[2])!
                    let wire = v[4]
                    if (wiresCheck[v[0]] == 1) {
                        wires[wire] = wires[v[0]]! >> shift
                        wiresCheck[wire] = 1
                    }
                }
                if (i.contains("NOT")) {
                    let v = i.components(separatedBy: CharacterSet.whitespaces)
                    let wire = v[3]
                    if (wiresCheck[v[1]] == 1) {
                        wires[wire] = 65536 + ~wires[v[1]]!
                        wiresCheck[wire] = 1
                    }
                }
            }
            
        }
        
        return Int(wires["lx"]!)
    }
    
    private func PartOne() -> Int{
        return calculateWires(in: input, part: 1)
    }
    
    private func PartTwo() -> Int {
     
        wires.removeAll()
        wiresCheck.removeAll()
        
        return calculateWires(in: input, part: 2)
    }
    
}
