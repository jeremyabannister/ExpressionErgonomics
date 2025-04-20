//
//  Bool+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension Bool {
    
    ///
    public func and(_ other: Bool) -> Bool {
        self && other
    }
    
    ///
    public mutating func andEquals(_ other: Bool) {
        self = self && other
    }
    
    ///
    public func or(_ other: Bool) -> Bool {
        self || other
    }
    
    ///
    public mutating func orEquals(_ other: Bool) {
        self = self || other
    }
    
    ///
    public func xOr(_ other: Bool) -> Bool {
        self != other
    }
    
    ///
    public mutating func xOrEquals(_ other: Bool) {
        self = self.xOr(other)
    }
    
    ///
    public func andNot(_ other: Bool) -> Bool {
        self.and(!other)
    }
}

///
extension Bool {
    
    /// Returns the opposite value of the receiving `Bool`.
    public var isNotTrue: Bool {
        isFalse
    }
    
    /// If the receiving `Bool` is true then the given closure is executed, otherwise it is not executed.
    public func ifSo(
        _ conditionalAction: ()->()
    ) {
        
        ///
        if self {
            
            ///
            conditionalAction()
        }
    }
}

///
extension Bool {
    
    ///
    public var isTrue: Bool {
        self
    }
    
    ///
    public var isFalse: Bool {
        !self
    }
}
