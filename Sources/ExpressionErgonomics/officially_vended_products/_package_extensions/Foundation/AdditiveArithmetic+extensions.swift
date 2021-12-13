//
//  AdditiveArithmetic+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/10/21.
//

///
public extension AdditiveArithmetic {
    
    /// A sometimes more ergonomic way to access the `+` operator on `AdditiveArithmetic` types.
    func plus (_ other: Self) -> Self {
        self + other
    }
    
    /// A sometimes more ergonomic way to access the `+=` operator on `AdditiveArithmetic` types.
    mutating func plusEquals (_ other: Self) {
        self += other
    }
    
    /// A sometimes more ergonomic way to access the `-` operator on `AdditiveArithmetic` types.
    func minus (_ other: Self) -> Self {
        self - other
    }
    
    /// A sometimes more ergonomic way to access the `-=` operator on `AdditiveArithmetic` types.
    mutating func minusEquals (_ other: Self) {
        self -= other
    }
}
