//
//  Dictionary_Keys+extensions.swift
//  
//
//  Created by Jeremy Bannister on 3/29/22.
//

///
public extension Dictionary.Keys {
    
    ///
    func doesNotContain (_ element: Element) -> Bool {
        !self.contains(element)
    }
}
