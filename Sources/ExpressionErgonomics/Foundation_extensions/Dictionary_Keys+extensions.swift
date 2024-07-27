//
//  Dictionary_Keys+extensions.swift
//  
//
//  Created by Jeremy Bannister on 3/29/22.
//

///
extension Dictionary.Keys {
    
    ///
    public func doesNotContain(
        _ element: Element
    ) -> Bool {
        
        ///
        !self.contains(element)
    }
}
