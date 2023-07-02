//
//  Dictionary+extensions.swift
//  
//
//  Created by Jeremy Bannister on 7/2/23.
//

///
extension Dictionary {
    
    ///
    public mutating func `set`
        (key: Key,
         to newValue: Value?) {
        
        ///
        self[key] = newValue
    }
}
