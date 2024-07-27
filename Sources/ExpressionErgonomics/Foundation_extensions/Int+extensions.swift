//
//  Int+extensions.swift
//  
//
//  Created by Jeremy Bannister on 4/20/22.
//

///
extension Int {
    
    ///
    public var asUInt: UInt? {
        self.isGreaterThanOrEqual(to: 0) ? UInt(self) : nil
    }
}
