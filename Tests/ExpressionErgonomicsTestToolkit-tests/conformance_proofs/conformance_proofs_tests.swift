//
//  conformance_proofs_tests.swift
//
//
//  Created by Jeremy Bannister on 7/28/24.
//

///
extension ExpressionErgonomic_tests {
    
    ///
    func proofOfExistenceOf_proofOfConformanceTo_ExpressionErgonomic() {
        func imagine<T: ExpressionErgonomic>(t: T) {
            t.proofOfConformanceTo_ExpressionErgonomic()
            T.proofOfConformanceTo_ExpressionErgonomic()
        }
    }
}
