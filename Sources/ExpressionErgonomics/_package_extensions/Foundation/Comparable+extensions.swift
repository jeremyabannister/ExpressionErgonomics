//
//  Comparable+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension Comparable {
    
    ///
    public func isGreater(than other: Self) -> Bool {
        self > other
    }
    
    ///
    public func isGreaterThanOrEqual(to other: Self) -> Bool {
        self >= other
    }
    
    ///
    public func isLess(than other: Self) -> Bool {
        self < other
    }
    
    ///
    public func isLessThanOrEqual(to other: Self) -> Bool {
        self <= other
    }
}
