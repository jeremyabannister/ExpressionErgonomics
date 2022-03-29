//
//  Sequence+extensions.swift
//  
//
//  Created by Jeremy Bannister on 3/29/22.
//

///
public extension Sequence where Element: Equatable {
    
    ///
    func doesNotContain (_ element: Element) -> Bool {
        
        ///
        !self.contains(element)
    }
}
