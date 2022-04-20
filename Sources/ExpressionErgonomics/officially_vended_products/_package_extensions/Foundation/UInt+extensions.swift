//
//  UInt+extensions.swift
//  
//
//  Created by Jeremy Bannister on 4/20/22.
//

///
public extension UInt {
    
    ///
    var asInt: Int? {
        self.isGreater(than: Int.max.asUInt!) ? nil : Int(self)
    }
}
