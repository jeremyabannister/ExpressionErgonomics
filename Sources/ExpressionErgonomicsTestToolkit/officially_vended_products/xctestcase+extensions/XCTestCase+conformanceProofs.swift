//
//  XCTestCase+conformanceProofs.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
public extension XCTestCase {
    
    ///
    func proof_ExpressionErgonomic <T: ExpressionErgonomic> (_ t: T.Type) { }
    
    ///
    func proof_ExpressionErgonomic <T: ExpressionErgonomic> (_ t: T) { }
}
