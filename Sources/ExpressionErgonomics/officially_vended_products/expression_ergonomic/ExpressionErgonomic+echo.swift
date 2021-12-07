//
//  ExpressionErgonomic+echo.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension ExpressionErgonomic {
    
    ///
    func echoing <Value> (_ keyPath: KeyPath<Self, Value>, as tag: String? = nil)
        -> Self {
        if let tag = tag {
            print(tag + ": \(self[keyPath: keyPath])")
        } else {
            print(self[keyPath: keyPath])
        }
        return self
    }
    
    ///
    func echoed (as tag: String? = nil) -> Self {
        if let tag = tag {
            print(tag + ": \(self)")
        } else {
            print(self)
        }
        return self
    }
}
