//
//  ExpressionErgonomic+handling.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

public extension ExpressionErgonomic {
    
    ///
    func handle (with handler: (Self)throws->()) rethrows {
        try handler(self)
    }
    
    ///
    func handled (by handler: (Self)throws->()) rethrows -> Self {
        try handler(self)
        return self
    }
}
