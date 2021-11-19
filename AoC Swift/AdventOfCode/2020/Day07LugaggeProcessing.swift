//
//  LugaggeProcessing.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 07.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class LugaggeProcessing {
    
    var luggaggeList: [String]
    
    init() {
        self.luggaggeList = Input2020d07.day07Luggage
        partOne(lugagge: self.luggaggeList)
        partTwo(luggage: self.luggaggeList)
    }
    
    func partTwo(luggage: [String]) {
        var dictBags: [String: Int] = [:]
        var dictSumPartials: [String: Int] = [:]
        
        var toCheck = Set<String>()
        var checked = Set<String>()
        toCheck.insert("shiny gold")

        var sum = 0
        while (toCheck.count > 0)  {
            let bag = toCheck.first!
            //print("checking:", bag)
            
            // shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.
            for i in luggage {
                let bagsAndContents = i.split(usingRegex: " contain ")
                //print(bagsAndContents)
                let bigBag = bagsAndContents[0].split(usingRegex: " bags")
                //print(bigBag[0])
                
                if (bigBag[0] == bag && !bagsAndContents[1].contains(bag)) {
                    //print(bigBag[0], "->", bagsAndContents[1])
                    let value = bagsAndContents[1].split(usingRegex: ", ")
                    
                    var sumintern = 0
                    for n in value {
                        let vec = n.split(separator: ",")
                        for j in vec {
                            if (!j.contains("no other bags.")) {
                                let element = j.split(separator: " ")
                                let number = element[0]
                                let name = element[1] + " " + element[2]
                                //print(number, name)
                                //arrayComplexo.append((Int(number)!, String(name)))
                                dictBags[String(name)] = Int(number)!
                                //print("dictBags: ", dictBags)
                                toCheck.insert(String(name))
                                sumintern+=Int(number)!
                            }
                        }
                    }
                    //print("sum intern: ", sumintern)
                    dictSumPartials[bag] = sumintern
                    //print("dictSumP: ", dictSumPartials)
                }
            }
            toCheck.remove(bag)
            checked.insert(bag)
        }
        //print("Checked: ", checked)
        // dictSumP:  ["dotted black": 0, "shiny gold": 3, "vibrant plum": 11, "dark olive": 7]
        //dictBags:  ["vibrant plum": 2, "faded blue": 3, "dark olive": 1, "dotted black": 4]
        //2+2*11 + 3*0 + 1*7 + 4*0
        
        for (key,value) in dictBags {
            //print("key: \(key) value: \(value)")
            if ((dictSumPartials[key]!) > 0) {
                //print("OK:", dictSumPartials[key]!)
                //print(value, "+", value, "*", Int(dictSumPartials[key]!))
//                if (value > 1) {
//                    sum+=value+Int(dictSumPartials[key]!)
                    sum+=value*value*Int(dictSumPartials[key]!)
//                } else {
//                    sum+=value+value*Int(dictSumPartials[key]!)
//                }
            }
        }
        print("Part 2 answer: \(sum)")
    }
    
    func partOne(lugagge: [String]) {
        let rootBag = "shiny gold"
        
        var foundBagList = Set<String>()
        var toCheck = Set<String>()
        var checked = Set<String>()
        toCheck.insert(rootBag)
        
        while (toCheck.count > 0)  {
            let bag = toCheck.first!
            
            for i in lugagge {
                let bagsAndContents = i.split(usingRegex: " contain ")
                let bigBag = bagsAndContents[0].split(usingRegex: " bags")
                
                if (bigBag[0] != bag && bagsAndContents[1].contains(bag)) {
                    //print(bigBag[0], "->", bagsAndContents[1])
                    toCheck.insert(bigBag[0])
                    foundBagList.insert(bagsAndContents[1])
                }
            }
            toCheck.remove(bag)
            checked.insert(bag)
        }
        //print("Checked: ", checked)
        print("Part 1 answer: ", foundBagList.count)
    }
}

