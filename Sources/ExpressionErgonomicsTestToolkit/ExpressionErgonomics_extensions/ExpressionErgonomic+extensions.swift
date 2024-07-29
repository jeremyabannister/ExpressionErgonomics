//
//  ExpressionErgonomic+extensions.swift
//
//
//  Created by Jeremy Bannister on 7/29/24.
//

///
extension ExpressionErgonomic {
    
    ///
    public static func proofOfProperty<
        Value
    >(
        _ keyPath: KeyPath<Self, Value>,
        _ expectedValueType: Value.Type
    ) { }
    
    ///
    public static func proofOfMutableProperty<
        Value
    >(
        _ keyPath: WritableKeyPath<Self, Value>,
        _ expectedValueType: Value.Type
    ) { }
}
