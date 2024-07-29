//
//  ExpressionErgonomic+extensions_tests.swift
//
//
//  Created by Jeremy Bannister on 7/29/24.
//

///
extension ExpressionErgonomic_tests {
    
    ///
    func test_proofOfProperty() {
        func imagine<
            T: ExpressionErgonomic,
            ReadableValue
        >(
            t: T,
            readableKeyPath: KeyPath<T, ReadableValue>
        ) {
            T.proofOfProperty(readableKeyPath, ReadableValue.self)
        }
    }
    
    ///
    func test_proofOfMutableProperty() {
        func imagine<
            T: ExpressionErgonomic,
            WritableValue
        >(
            t: T,
            writableKeyPath: WritableKeyPath<T, WritableValue>
        ) {
            T.proofOfProperty(writableKeyPath, WritableValue.self)
            T.proofOfMutableProperty(writableKeyPath, WritableValue.self)
        }
    }
}
