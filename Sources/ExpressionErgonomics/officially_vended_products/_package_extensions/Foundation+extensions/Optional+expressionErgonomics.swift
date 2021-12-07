//
//  Optional+expressionErgonomics.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension Optional {
    
    /// Returns true if this value is `nil`, and false otherwise.
    var isNil: Bool {
        switch self {
        case .some: return false
        case .none: return true
        }
    }
    
    /// Returns false if this value is `nil`, and true otherwise.
    var isNotNil: Bool {
        !isNil
    }
    
    /// This method returns either the wrapped value contained by this optional, or the given default value if no value is contained by this optional.
    func replacingNil (with value: Wrapped) -> Wrapped {
        guard case .some (let wrapped) = self else { return value }
        return wrapped
    }
    
    /// This method returns either the wrapped value contained by this optional, or the given default value if no value is contained by this optional.
    ///
    /// This overload of this function accepts a closure that returns the default value, for ergonomic convenience.
    func replacingNil (with valueGenerator: ()->Wrapped) -> Wrapped {
        guard case .some (let wrapped) = self else { return valueGenerator() }
        return wrapped
    }
}
