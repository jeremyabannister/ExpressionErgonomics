//
//  Equatable+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension Equatable {
    
    ///
    func isNotEqual (to other: Self) -> Bool {
        self.doesNotEqual(other)
    }
    
    ///
    func isNotEqual (to other: Self?) -> Bool {
        self.doesNotEqual(other)
    }
    
    ///
    func doesNotEqual (_ other: Self) -> Bool {
        self != other
    }
    
    ///
    func doesNotEqual (_ other: Self?) -> Bool {
        self != other
    }
}

///
public extension Equatable {
    
    ///
    func isEqual (to other: Self) -> Bool {
        self.equals(other)
    }
    
    ///
    func isEqual (to other: Self?) -> Bool {
        self.equals(other)
    }
    
    ///
    func equals (_ other: Self) -> Bool {
        self == other
    }
    
    ///
    func equals (_ other: Self?) -> Bool {
        self == other
    }
}
