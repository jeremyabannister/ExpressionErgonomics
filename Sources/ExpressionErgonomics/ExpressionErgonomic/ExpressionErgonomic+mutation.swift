//
//  ExpressionErgonomic+mutation.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension ExpressionErgonomic {
    
    /// This method creates a mutable copy of the receiving instance, writes the given value to the given key path on the copy, and then returns the copy.
    ///
    /// This method is useful because it allows you to maintain a function body as just a single expression (meaning you don't have to write `return`) while still allowing you to mutate the input before returning it. For example:
    ///
    /// # Example
    /// ```
    /// func loadUp (bankAccount: BankAccount) -> BankAccount {
    ///     bankAccount
    ///         .setting(
    ///             \.balance,
    ///             to: 90_000
    ///         )
    /// }
    /// ```
    public func setting<
        Value
    >(
        _ keyPath: WritableKeyPath<Self, Value>,
        to newValue: Value
    ) -> Self {
        
        ///
        var copy = self
        
        ///
        copy[keyPath: keyPath] = newValue
        
        ///
        return copy
    }
    
    /// This method creates a mutable copy of the receiving instance, writes the given value (if it is not nil) to the given key path on the copy, and then returns the copy.
    ///
    /// This method is useful because it allows you to maintain a function body as just a single expression (meaning you don't have to write `return`) while still allowing you to mutate the input before returning it. For example:
    ///
    /// # Example
    /// ```
    /// func giveRandomNickname (to user: User) -> User {
    ///     user
    ///         .trySetting(
    ///             \.nickname,
    ///             to: generateRandomNickname()
    ///         )
    /// }
    /// ```
    public func trySetting<
        Value
    >(
        _ keyPath: WritableKeyPath<Self, Value>,
        to newValue: Value?
    ) -> Self {
        
        ///
        guard let newValue = newValue else { return self }
        
        ///
        return self.setting(keyPath, to: newValue)
    }
    
    /// This method returns the receiving instance after performing the provided mutation on it.
    ///
    /// This method is useful because it allows you to maintain a function body as just a single expression (meaning you don't have to write `return`) while still allowing you to mutate the input before returning it. For example:
    ///
    /// # Example
    /// ```
    /// func addOneThousand (to bankAccount: BankAccount) -> BankAccount {
    ///     bankAccount.mutating(\.balance) { $0 += 1000 }
    /// }
    /// ```
    public func mutating<
        Value
    >(
        _ keyPath: WritableKeyPath<Self, Value>,
        using mutation: (inout Value)throws->()
    ) rethrows -> Self {
            
        ///
        var mutableCopyOfValue = self[keyPath: keyPath]
        
        ///
        try mutation(&mutableCopyOfValue)
        
        ///
        return self.setting(keyPath, to: mutableCopyOfValue)
    }
    
    /// This method returns the receiving instance after performing the provided mutation on it.
    ///
    /// This method is useful because it allows you to maintain a function body as just a single expression (meaning you don't have to write `return`) while still allowing you to mutate the input before returning it. For example:
    ///
    /// # Example
    /// ```
    /// func addOneThousand (to bankAccount: BankAccount) -> BankAccount {
    ///     bankAccount.mutated { $0.balance += 1000 }
    /// }
    /// ```
    public func mutated(
        by mutation: (inout Self)throws->()
    ) rethrows -> Self {
        
        ///
        try self.mutating(
            \.self,
             using: mutation
        )
    }
    
    /// This method mutates the receiving instance in place using the provided mutation on the specified key path.
    public mutating func mutate<
        Value
    >(
        _ keyPath: WritableKeyPath<Self, Value>,
        using mutation: (inout Value)throws->()
    ) rethrows {
        
        ///
        self =
            try self.mutating(
                keyPath,
                using: mutation
            )
    }
    
    ///
    public mutating func set(
        to newSelf: Self
    ) {
        
        ///
        self = newSelf
    }
    
    ///
    public mutating func set(
        to newSelfGenerator: ()throws->Self
    ) rethrows {
        
        ///
        self.set(
            to: try newSelfGenerator()
        )
    }
}
