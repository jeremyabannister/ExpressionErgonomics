//
//  XCTestCase+conformanceProofs.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension XCTestCase_tests {
    
    ///
    func test_proof_ExpressionErgonomic_metatype () {
        func imagine <T: ExpressionErgonomic> (t: T) {
            ifGiven(metatype) {
                $0.proof_ExpressionErgonomic(T.self)
            }
        }
    }
    
    ///
    func test_proof_ExpressionErgonomic_instance () {
        func imagine <T: ExpressionErgonomic> (t: T) {
            ifGiven(metatype) {
                $0.proof_ExpressionErgonomic(t)
            }
        }
    }
}
