//
//  ExpressionErgonomic+nullify.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

extension ExpressionErgonomic {
    
    ///
    public func nullify(
        if predicate: @escaping (Self)->Bool
    ) -> Self? {
        
        ///
        nullify(if: predicate(self))
    }
    
    ///
    public func nullify(
        if condition: Bool
    ) -> Self? {
        
        ///
        condition ? nil : self
    }
}

///
extension ExpressionErgonomic {
    
    ///
    public func replace(
        with value: Self,
        if predicate: @escaping (Self)->Bool
    ) -> Self {
        
        ///
        replace(with: value, if: predicate(self))
    }
    
    ///
    public func replace(
        with value: Self,
        if condition: Bool
    ) -> Self {
        
        ///
        self
            .nullify(if: condition)
            .replacingNil(with: value)
    }
}
