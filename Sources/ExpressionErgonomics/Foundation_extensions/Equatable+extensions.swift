//
//  Equatable+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension Equatable {
    
    ///
    public func isNotEqual(to other: Self) -> Bool {
        self.doesNotEqual(other)
    }
    
    ///
    public func isNotEqual(to other: Self?) -> Bool {
        self.doesNotEqual(other)
    }
    
    ///
    public func doesNotEqual(_ other: Self) -> Bool {
        self != other
    }
    
    ///
    public func doesNotEqual(_ other: Self?) -> Bool {
        self != other
    }
}

///
extension Equatable {
    
    ///
    public func isEqual(to other: Self) -> Bool {
        self.equals(other)
    }
    
    ///
    public func isEqual(to other: Self?) -> Bool {
        self.equals(other)
    }
    
    ///
    public func equals(_ other: Self) -> Bool {
        self == other
    }
    
    ///
    public func equals(_ other: Self?) -> Bool {
        self == other
    }
}
