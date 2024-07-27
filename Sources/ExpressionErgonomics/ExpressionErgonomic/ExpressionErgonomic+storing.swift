//
//  ExpressionErgonomic+storing.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension ExpressionErgonomic {
    
    ///
    public func storing<
        Value
    >(
        _ keyPath: KeyPath<Self, Value>,
        in storage: inout Value
    ) -> Self {
        
        ///
        self.store(keyPath, in: &storage)
        
        ///
        return self
    }
    
    ///
    public func storing<
        Value
    >(
        _ keyPath: KeyPath<Self, Value>,
        in storage: inout Value?
    ) -> Self {
        
        ///
        self.store(keyPath, in: &storage)
        
        ///
        return self
    }
}

///
extension ExpressionErgonomic {
    
    ///
    public func store<
        Value
    >(
        _ keyPath: KeyPath<Self, Value>,
        in storage: inout Value
    ) {
        
        ///
        storage = self[keyPath: keyPath]
    }
    
    ///
    public func store<
        Value
    >(
        _ keyPath: KeyPath<Self, Value>,
        in storage: inout Value?
    ) {
        
        ///
        storage = .some(self[keyPath: keyPath])
    }
}

///
extension ExpressionErgonomic {
    
    ///
    public func storing(
        in storage: inout Self
    ) -> Self {
        
        ///
        self.store(in: &storage)
        
        ///
        return self
    }
    
    ///
    public func storing(
        in storage: inout Self?
    ) -> Self {
        
        ///
        self.store(in: &storage)
        
        ///
        return self
    }
}

///
extension ExpressionErgonomic {
    
    ///
    public func store(
        in storage: inout Self?
    ) {
        
        ///
        storage = .some(self)
    }
    
    ///
    public func store(
        in storage: inout Self
    ) {
        
        ///
        storage = self
    }
}
