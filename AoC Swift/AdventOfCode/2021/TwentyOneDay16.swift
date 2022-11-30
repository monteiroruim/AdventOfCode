//
//  TwentyOneDay16.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 21.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class TwentyOneDay16 {
    
    //private var input: [String]
    let bits = In2021D16().input.map {
        $0.hexDigitValue! }
        .flatMap { $0.binary() }

    struct Packet {
        var version: Int
        var id: Int
        var result: Int
        var subpackets: [Packet] = []
        
        var versionTotal: Int {
            version + subpackets.map(\.versionTotal).reduce(0, +)
        }
    }
    
    func parse(bits: inout ArraySlice<Bool>) -> Packet {
        let version = bits.popFirst(3).int
        let id = bits.popFirst(3).int
        
        if id == 4 {
            var literalBits: [Bool] = []
            while bits.first != false {
                literalBits.append(contentsOf: bits.popFirst(5).dropFirst())
            }
            literalBits.append(contentsOf: bits.popFirst(5).dropFirst())
            return Packet(version: version, id: id, result: literalBits.int)
        }
        
        var subpackets: [Packet] = []
        
        let lengthId = bits.removeFirst()
        if lengthId {
            let numberOfSubpackets = bits.popFirst(11).int
            for _ in 0 ..< numberOfSubpackets {
                subpackets.append(parse(bits: &bits))
            }
        } else {
            let subpacketLength = bits.popFirst(15).int
            let targetCount = bits.count - subpacketLength
            while bits.count != targetCount {
                subpackets.append(parse(bits: &bits))
            }
        }
        
        let values = subpackets.lazy.map(\.result)
        
        let result: Int = {
            switch id {
            case 0: return values.reduce(0, +)
            case 1: return values.reduce(1, *)
            case 2: return values.min()!
            case 3: return values.max()!
            case 5: return values[0] > values[1] ? 1 : 0
            case 6: return values[0] < values[1] ? 1 : 0
            case 7: return values[0] == values[1] ? 1 : 0
            default: fatalError("Unexpected input")
            }
        }()
        
        return Packet(version: version, id: id, result: result, subpackets: subpackets)
    }

    public init() {
        print("puzzle answer (part 1): \(PartOne().0)")
        print("puzzle answer (part 2): \(PartOne().1)")
        Tests()
    }
    
    private func PartOne() -> (String,String) {
        var bitSlice = bits[...]
        let packet = parse(bits: &bitSlice)

        return (packet.versionTotal.description, packet.result.description)
    }

    private func Tests() {
        assert(PartOne().0 == "908", "PartOne KO")
        assert(PartOne().1 == "10626195124371", "PartTwo KO")
    }
    
}
