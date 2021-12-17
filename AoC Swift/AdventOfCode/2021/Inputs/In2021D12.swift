//
//  In2021D12.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 15.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class In2021D12 {
    
    private var inputDebug = """
start-A
start-b
A-c
A-b
b-d
A-end
b-end
"""
    private var input = """
start-kc
pd-NV
start-zw
UI-pd
HK-end
UI-kc
pd-ih
ih-end
start-UI
kc-zw
end-ks
MF-mq
HK-zw
LF-ks
HK-kc
ih-HK
kc-pd
ks-pd
MF-pd
UI-zw
ih-NV
ks-HK
MF-kc
zw-NV
NV-ks
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
