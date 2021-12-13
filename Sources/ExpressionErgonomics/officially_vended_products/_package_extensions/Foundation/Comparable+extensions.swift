//
//  Comparable+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension Comparable {
    
    ///
    func isGreater (than other: Self) -> Bool {
        self > other
    }
    
    ///
    func isGreaterThanOrEqual (to other: Self) -> Bool {
        self >= other
    }
    
    ///
    func isLess (than other: Self) -> Bool {
        self < other
    }
    
    ///
    func isLessThanOrEqual (to other: Self) -> Bool {
        self <= other
    }
}
