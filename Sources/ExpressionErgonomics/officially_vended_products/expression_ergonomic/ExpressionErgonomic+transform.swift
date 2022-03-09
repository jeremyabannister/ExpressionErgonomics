//
//  ExpressionErgonomic+transform.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
@available(iOS 13.0, macOS 10.15.0, watchOS 6, tvOS 13, *)
public extension ExpressionErgonomic {
    
    ///
    func transform
        <NewValue>
        (_ transform: (Self)async throws->NewValue)
    async rethrows -> NewValue {
        
        ///
        try await transform(self)
    }
}

///
public extension ExpressionErgonomic {
    
    ///
    func transform
        <NewValue>
        (_ transform: (Self)throws->NewValue)
    rethrows -> NewValue {
        
        ///
        try transform(self)
    }
}
