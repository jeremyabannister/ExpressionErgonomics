//
//  Collection+expressionErgonomics.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension Collection {
    
    /// `isNotEmpty` is simply a sometimes-more-ergonomic way to refer to `!isEmpty`.
    var isNotEmpty: Bool {
        return !isEmpty
    }
}
