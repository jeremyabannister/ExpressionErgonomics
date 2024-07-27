//
//  Numeric+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/13/21.
//

///
extension Numeric {
    
    /// A sometimes-more-ergonomic way to access the `*` operator for `Numeric` types.
    public func times(_ other: Self) -> Self {
        self * other
    }
}
