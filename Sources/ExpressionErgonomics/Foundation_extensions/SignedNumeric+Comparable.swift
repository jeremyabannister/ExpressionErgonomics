//
//  SignedNumeric+Comparable.swift
//  
//
//  Created by Jeremy Bannister on 12/13/21.
//

///
extension SignedNumeric
    where Self: Comparable {
    
    ///
    public var absoluteValue: Self {
        abs(self)
    }
}
