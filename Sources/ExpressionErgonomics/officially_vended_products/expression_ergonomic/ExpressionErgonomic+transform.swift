//
//  ExpressionErgonomic+transform.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension ExpressionErgonomic {
    
    ///
    func transform <NewValue> (_ transform: (Self)throws->NewValue) rethrows -> NewValue {
        try transform(self)
    }
}
