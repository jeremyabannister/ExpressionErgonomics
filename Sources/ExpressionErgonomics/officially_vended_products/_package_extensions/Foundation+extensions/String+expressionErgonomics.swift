//
//  String+expressionErgonomics.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension String {
    
    ///
    func prepending (_ aString: String) -> String {
        aString + self
    }
    
    ///
    mutating func plusEquals (_ other: String) {
        self = self.plus(other)
    }
    
    ///
    func plus (_ other: String) -> String {
        self + other
    }
}
