//
//  Sequence+extensions.swift
//  
//
//  Created by Jeremy Bannister on 3/29/22.
//

///
extension Sequence {
    
    ///
    public func handlingEach(
        with handler: (Element)throws->()
    ) rethrows -> Self {
        
        ///
        try self.forEach(handler)
        
        ///
        return self
    }
}

///
extension Sequence {
    
    ///
    public func doesNotContain(
        where predicate: (Element)throws->Bool
    ) rethrows -> Bool {
        
        ///
        try !self.contains(where: predicate)
    }
}

///
extension Sequence
    where Element: Equatable {
    
    ///
    public func doesNotContain(
        _ element: Element
    ) -> Bool {
        
        ///
        !self.contains(element)
    }
}
