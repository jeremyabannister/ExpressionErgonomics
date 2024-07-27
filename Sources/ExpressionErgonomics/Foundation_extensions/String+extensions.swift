//
//  String+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/7/21.
//

///
extension String {
    
    ///
    public func prepending(
        _ aString: String
    ) -> String {
        
        ///
        aString + self
    }
    
    ///
    public mutating func plusEquals(
        _ other: String
    ) {
        
        ///
        self = self.plus(other)
    }
    
    ///
    public func plus(
        _ other: String
    ) -> String {
        
        ///
        self + other
    }
}
