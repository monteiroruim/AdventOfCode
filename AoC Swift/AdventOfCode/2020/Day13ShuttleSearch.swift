//
//  Day12RainRisk.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 14.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class ShuttleSearch {
    
    var globalInstructions = In2020D13.day13BusList.components(separatedBy: .newlines)
    
    struct Bus {
        var arrival: Int
        var bus: Int
    }
    
    struct Departure {
        var bus: Int
        var id: Int
    }
    
    init() {
        partOne(instructions: self.globalInstructions)
        partTwo(instructions: self.globalInstructions)
    }

    func partTwo(instructions: [String]) {
        var result = 0
        
        //(t + 0) mod 7 = 0, (t + 1) mod 13 = 0, (t + 4) mod 59 = 0, (t + 6) mod 31 = 0, (t + 7) mod 19 = 0
        let bus = instructions[1].components(separatedBy: ",").map{ Int($0) }
        var buses = [Departure]()
        
        for (i,elem) in bus.enumerated() {
            if elem != nil {
                let value = Int(elem!)
                buses.append(Departure(bus: value, id: i))
            }
        }
        
        var minute = buses[0].bus
        for i in 1 ... buses.count-1 {
            while (result + buses[i].id) % buses[i].bus != 0 {
                result += minute
            }
            minute *= buses[i].bus
        }
    
        print("Part 2 answer: \(result)")
    }
    
    func partOne(instructions: [String]) {
        //print(instructions)
        let arrivalTime = Int(instructions[0])!
        let bus = instructions[1].components(separatedBy: ",").map{ Int($0) }
        var busesArrivalTimes = [Bus]()
        
        for elem in bus {
            if elem != nil {
                let value = Int(elem!)
                let arrival = ((arrivalTime / value) + 1) * value
                busesArrivalTimes.append(Bus(arrival: arrival, bus: value))
            }
        }
        busesArrivalTimes.sort(by: { $0.arrival < $1.arrival })
        let answer = (arrivalTime - busesArrivalTimes[0].arrival) * busesArrivalTimes[0].bus
        
        print("Part 1 answer: \(abs(answer))")
    }
}
