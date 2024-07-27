//
//  Collection+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension Collection {
    
    ///
    public var count_asUInt: UInt {
        count.asUInt!
    }
}

///
extension Collection {
    
    /// `isNotEmpty` is simply a sometimes-more-ergonomic way to refer to `!isEmpty`.
    public var isNotEmpty: Bool {
        return !isEmpty
    }
}
