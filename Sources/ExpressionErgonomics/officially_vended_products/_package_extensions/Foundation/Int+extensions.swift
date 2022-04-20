//
//  Int+extensions.swift
//  
//
//  Created by Jeremy Bannister on 4/20/22.
//

///
public extension Int {
    
    ///
    var asUInt: UInt? {
        self.isGreaterThanOrEqual(to: 0) ? UInt(self) : nil
    }
}
