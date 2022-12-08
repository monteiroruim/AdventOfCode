//
//  TwentyTwoD07.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 05.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyTwoDay07 {

    private var input: [String]
    
    final class Node {
        weak var parent: Node? = nil
        var name: String
        var children: [Node] = []
        var files: [String: Int] = [:]
        
        init(name: String, children: [Node] = [], files: [String: Int] = [:]) {
            self.name = name
            self.children = children
            self.files = files
        }
        
        func sizeOfNode() -> Int {
//            print("/", name, files.description, "dir:", children.compactMap{ $0.name }, children.map { $0.sizeOfNode() })
            return files.values.reduce(0, +) + children.map { $0.sizeOfNode() }.reduce(0, +)
        }
        
        func sizes() -> [Int] {
            let sizesArray = [sizeOfNode()] + children.flatMap { $0.sizes() }
            //print(self.name, sizesArray)
            return sizesArray
        }
    }
    
    public init() {
        
        self.input = In2022D07().getInput().components(separatedBy: CharacterSet.newlines)
        
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo() )")
        Tests()
    }
    
    private func PartOne() -> Int {
        
        parseInput()
            .sizes()
            .filter { $0 <= 100_000 }
            .reduce(0, +)
    }
    
    private func PartTwo() -> Int {

        let root = parseInput()
        let totalSize = root.sizeOfNode()
        let maxSize = 40_000_000
        let toDelete = totalSize - maxSize
        
        return root
            .sizes()
            .filter { $0 >= toDelete }
            .min()!
    }
    
    func parseInput() -> Node {
        let root = Node(name: "/")
        var current = root
        
        for i in self.input {
            let op = i.components(separatedBy: " ")
            if i.hasPrefix("$") {
                let command = op[1] // cd,ls
                switch command {
                case "cd":
                    let directory = op[2]
                    switch directory {
                    case "/": current = root
                    case "..":
                        current = current.parent!
                    default:
                        if let existing = current.children.first(where: { $0.name == directory }) {
                            current = existing
                        } else {
                            let newDirectory = Node(name: String(directory))
                            current.children.append(newDirectory)
                            newDirectory.parent = current
                            current = newDirectory
                        }
                    }
                default: continue
                }
            } else {
                let isCommand = op[0] // dir
                if isCommand.starts(with: "dir") {
                    let newDirectory = Node(name: String(op[1]))
                    current.children.append(newDirectory)
                    newDirectory.parent = current
                } else {
                    let size = Int(op[0])!
                    let name = String(op[1])
                    current.files[name] = size
                }
            }
            
        }
        
        return root
    }
    
    private func Tests() {
        assert(PartOne() == 1792222, "Part 1 KO")
        assert(PartTwo() == 1112963, "Part 2 KO")
    }
    
}
