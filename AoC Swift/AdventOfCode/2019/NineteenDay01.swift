//
//  nineteenDayOne.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 02.12.19.
//  Copyright © 2019 Pereira Orlando. All rights reserved.
//

import Foundation

let massValues = [
    95815,
    58493,
    77277,
    57491,
    124211,
    134530,
    86842,
    63308,
    139649,
    75958,
    74312,
    63413,
    128293,
    118123,
    108576,
    105474,
    50366,
    63203,
    119792,
    147054,
    110863,
    51551,
    101243,
    108123,
    108229,
    76988,
    126344,
    81759,
    74582,
    131239,
    143408,
    53126,
    134275,
    142797,
    61548,
    104641,
    134200,
    103371,
    67804,
    53892,
    94285,
    115017,
    61553,
    66873,
    103186,
    108708,
    71366,
    63572,
    137981,
    72784,
    140697,
    125710,
    121386,
    131305,
    61645,
    81485,
    82042,
    148145,
    75070,
    72671,
    146981,
    124797,
    85756,
    62383,
    147575,
    56740,
    103299,
    63511,
    145914,
    114995,
    73657,
    118481,
    105351,
    102848,
    118796,
    139936,
    112388,
    80794,
    128850,
    92493,
    65409,
    60445,
    124267,
    110438,
    145208,
    96697,
    116439,
    71484,
    71588,
    89813,
    81525,
    88200,
    86443,
    79786,
    131067,
    105919,
    126045,
    135292,
    117451,
    67730
]

class nineteenDay01 {
    
    var fuelPartOne: Int
    var fuelPartTwo: Int
    
    init (){
        self.fuelPartOne = 0
        self.fuelPartTwo = 0
        partOne(values: massValues)
        partTwo(values: massValues)
    }
    
    func getMass(value: Int) -> Int {
        Int(Double((value/3)).rounded(.down))-2
    }
    
    func partOne(values: [Int]) {
        for f in massValues {
            fuelPartOne += getMass(value: f)
        }
        print("Total Fuel Part 1:  \(fuelPartOne)") //3297909
    }
    
    // Validators
    // 1969 = 654 + 216 + 70 + 21 + 5 = 966.
    // 33583 + 11192 + 3728 + 1240 + 411 + 135 + 43 + 12 + 2 = 50346
    func partTwo(values: [Int]){
        var nextFuel: Int
        
        for mass in massValues {
            nextFuel = mass
        
            while (nextFuel > 6) { // last value where == 0
                let mass = getMass(value: nextFuel)
                fuelPartTwo += mass
                nextFuel = mass
            }
        }
        print("Total Fuel Part 2:  \(fuelPartTwo)") //4943994
    }
    
}
