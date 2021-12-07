//
//  ExpressionErgonomic+storing.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension ExpressionErgonomic {
    
    ///
    func storing <Value> (_ keyPath: KeyPath<Self, Value>,
                          in storage: inout Value)
        -> Self {
        
        self.store(keyPath, in: &storage)
        return self
    }
    
    ///
    func storing <Value> (_ keyPath: KeyPath<Self, Value>,
                          in storage: inout Value?)
        -> Self {
        
        self.store(keyPath, in: &storage)
        return self
    }
}

///
public extension ExpressionErgonomic {
    
    ///
    func store <Value> (_ keyPath: KeyPath<Self, Value>,
                        in storage: inout Value) {
        storage = self[keyPath: keyPath]
    }
    
    ///
    func store <Value> (_ keyPath: KeyPath<Self, Value>,
                        in storage: inout Value?) {
        storage = .some(self[keyPath: keyPath])
    }
}

///
public extension ExpressionErgonomic {
    
    ///
    func storing (in storage: inout Self) -> Self {
        self.store(in: &storage)
        return self
    }
    
    ///
    func storing (in storage: inout Self?) -> Self {
        self.store(in: &storage)
        return self
    }
}

///
public extension ExpressionErgonomic {
    
    ///
    func store (in storage: inout Self?) {
        storage = .some(self)
    }
    
    ///
    func store (in storage: inout Self) {
        storage = self
    }
}
