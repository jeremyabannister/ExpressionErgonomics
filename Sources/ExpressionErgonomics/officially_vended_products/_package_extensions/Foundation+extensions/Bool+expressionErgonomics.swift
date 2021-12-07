//
//  Bool+expressionErgonomics.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension Bool {
    
    ///
    func and (_ other: Bool) -> Bool {
        self && other
    }
    
    ///
    mutating func andEquals (_ other: Bool) {
        self = self && other
    }
    
    ///
    func or (_ other: Bool) -> Bool {
        self || other
    }
    
    ///
    mutating func orEquals (_ other: Bool) {
        self = self || other
    }
    
    ///
    func xOr (_ other: Bool) -> Bool {
        self != other
    }
    
    ///
    mutating func xOrEquals (_ other: Bool) {
        self = self.xOr(other)
    }
    
    ///
    func andNot (_ other: Bool) -> Bool {
        self.and(!other)
    }
}
