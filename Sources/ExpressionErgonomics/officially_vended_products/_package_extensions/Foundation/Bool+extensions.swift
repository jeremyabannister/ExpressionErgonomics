//
//  Bool+extensions.swift
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

///
public extension Bool {
    
    /// Returns the opposite value of the receiving `Bool`.
    var isNotTrue: Bool {
        isFalse
    }
    
    /// If the receiving `Bool` is true then the given closure is executed, otherwise it is not executed.
    func ifSo (_ conditionalAction: ()->()) {
        if self {
            conditionalAction()
        }
    }
}

///
public extension Bool {
    
    ///
    var isTrue: Bool {
        self
    }
    
    ///
    var isFalse: Bool {
        !self
    }
}
