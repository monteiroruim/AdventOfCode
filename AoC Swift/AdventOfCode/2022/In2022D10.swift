//
//  In2022D10.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 08.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class In2022D10 {
    
    private var inputDebug = """
addx 15
addx -11
addx 6
addx -3
addx 5
addx -1
addx -8
addx 13
addx 4
noop
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx -35
addx 1
addx 24
addx -19
addx 1
addx 16
addx -11
noop
noop
addx 21
addx -15
noop
noop
addx -3
addx 9
addx 1
addx -3
addx 8
addx 1
addx 5
noop
noop
noop
noop
noop
addx -36
noop
addx 1
addx 7
noop
noop
noop
addx 2
addx 6
noop
noop
noop
noop
noop
addx 1
noop
noop
addx 7
addx 1
noop
addx -13
addx 13
addx 7
noop
addx 1
addx -33
noop
noop
noop
addx 2
noop
noop
noop
addx 8
noop
addx -1
addx 2
addx 1
noop
addx 17
addx -9
addx 1
addx 1
addx -3
addx 11
noop
noop
addx 1
noop
addx 1
noop
noop
addx -13
addx -19
addx 1
addx 3
addx 26
addx -30
addx 12
addx -1
addx 3
addx 1
noop
noop
noop
addx -9
addx 18
addx 1
addx 2
noop
noop
addx 9
noop
noop
noop
addx -1
addx 2
addx -37
addx 1
addx 3
noop
addx 15
addx -21
addx 22
addx -6
addx 1
noop
addx 2
addx 1
noop
addx -10
noop
noop
addx 20
addx 1
addx 2
addx 2
addx -6
addx -11
noop
noop
noop
"""
    private var input = """
noop
noop
addx 5
addx 21
addx -16
noop
addx 1
noop
noop
addx 4
addx 1
addx 4
addx 1
noop
addx 4
addx -9
noop
addx 19
addx -5
noop
noop
addx 5
addx 1
addx -38
addx 5
addx -2
addx 2
noop
noop
addx 7
addx 9
addx 20
addx -3
addx -18
addx 2
addx 5
noop
noop
addx -2
noop
noop
addx 7
addx 3
addx -2
addx 2
addx -28
addx -7
addx 5
noop
addx 2
addx 32
addx -27
noop
noop
noop
noop
noop
addx 7
noop
addx 22
addx -19
noop
addx 5
noop
addx -7
addx 17
addx -7
noop
addx -20
addx 27
noop
addx -16
addx -20
addx 1
noop
addx 3
addx 15
addx -8
addx -2
addx -6
addx 14
addx 4
noop
noop
addx -17
addx 22
noop
addx 5
noop
noop
noop
addx 2
noop
addx 3
addx -32
addx -5
noop
addx 4
addx 3
addx -2
addx 34
addx -27
addx 5
addx 16
addx -18
addx 7
noop
addx -2
addx -1
addx 8
addx 14
addx -9
noop
addx -15
addx 16
addx 2
addx -35
noop
noop
noop
noop
addx 3
addx 4
noop
addx 1
addx 4
addx 1
noop
addx 4
addx 2
addx 3
addx -5
addx 19
addx -9
addx 2
addx 4
noop
noop
noop
noop
addx 3
addx 2
noop
noop
noop
"""
    
    public init() {
    }
    
    public func getInput() -> String {
        return input
    }
    
    public func getInputDebug() -> String {
        return inputDebug
    }
    
}
