//
//  FifteenDay04.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 22.11.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation
import CryptoKit

class FifteenDay04 {
    
    init() {
        print("puzzle answer (part 1): \(PartOne())")
        print("puzzle answer (part 2): \(PartTwo())") // Exec time:  301.83065 s
    }
    
    func MD5(string: String) -> String {
        let digest = Insecure.MD5.hash(data: string.data(using: .utf8) ?? Data())

        return digest.map {
            String(format: "%02hhx", $0)
        }.joined()
    }
    
    private func PartOne() -> Int {
    
        let secret = "yzbqklnj"
        let zero = "00000"
        var result = 0
        
        for i in result..<Int.max {
            let newSecret = secret.appending(String(i))
            let hash = MD5(string: newSecret)
            
            if (hash.starts(with: zero)) {
                result = i
                break
            }
        }
        return result
    }

    private func PartTwo() -> Int {
        let secret = "yzbqklnj"
        let zero = "000000"
        var result = 0
        
        for i in result..<Int.max {
            let newSecret = secret.appending(String(i))
            let hash = MD5(string: newSecret)
            
            if (hash.starts(with: zero)) {
                result = i
                break
            }
        }
        return result
    }
    
}
