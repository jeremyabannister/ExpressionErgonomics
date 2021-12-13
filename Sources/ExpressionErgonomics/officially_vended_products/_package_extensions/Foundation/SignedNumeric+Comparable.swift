//
//  SignedNumeric+Comparable.swift
//  
//
//  Created by Jeremy Bannister on 12/13/21.
//

///
public extension SignedNumeric where Self: Comparable {
    
    ///
    var absoluteValue: Self {
        abs(self)
    }
}
