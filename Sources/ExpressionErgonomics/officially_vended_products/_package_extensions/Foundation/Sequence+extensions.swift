//
//  Sequence+extensions.swift
//  
//
//  Created by Jeremy Bannister on 3/29/22.
//

///
public extension Sequence {
    
    ///
    func doesNotContain
        (where predicate: (Element)throws->Bool)
    rethrows -> Bool {
        
        ///
        try !self.contains(where: predicate)
    }
}

///
public extension Sequence where Element: Equatable {
    
    ///
    func doesNotContain (_ element: Element) -> Bool {
        !self.contains(element)
    }
}
