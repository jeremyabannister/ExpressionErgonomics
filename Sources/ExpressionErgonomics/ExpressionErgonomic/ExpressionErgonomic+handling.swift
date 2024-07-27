//
//  ExpressionErgonomic+handling.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension ExpressionErgonomic {
    
    ///
    public func handle(
        with handler: (Self)throws->()
    ) rethrows {
        
        ///
        try handler(self)
    }
    
    ///
    public func handled(
        by handler: (Self)throws->()
    ) rethrows -> Self {
        
        ///
        try handler(self)
        
        ///
        return self
    }
}
