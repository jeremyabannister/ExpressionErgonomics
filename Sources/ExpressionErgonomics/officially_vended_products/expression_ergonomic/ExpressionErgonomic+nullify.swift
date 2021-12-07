//
//  ExpressionErgonomic+nullify.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

public extension ExpressionErgonomic {
    
    ///
    func nullify (if predicate: @escaping (Self)->Bool) -> Self? {
        nullify(if: predicate(self))
    }
    
    ///
    func nullify (if condition: Bool) -> Self? {
        condition ? nil : self
    }
}

///
public extension ExpressionErgonomic {
    
    ///
    func replace (with value: Self,
                  if predicate: @escaping (Self)->Bool)
        -> Self {
        
        replace(with: value, if: predicate(self))
    }
    
    ///
    func replace (with value: Self,
                  if condition: Bool)
        -> Self {
        
        self
            .nullify(if: condition)
            .replacingNil(with: value)
    }
}
