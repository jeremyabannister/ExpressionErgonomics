//
//  UInt+extensions.swift
//  
//
//  Created by Jeremy Bannister on 4/20/22.
//

///
extension UInt {
    
    ///
    public var asInt: Int? {
        
        ///
        self.isGreater(than: Int.max.asUInt!)
            ? nil
            : Int(self)
    }
}
