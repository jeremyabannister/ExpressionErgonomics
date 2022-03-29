//
//  Set+extensions.swift
//  
//
//  Created by Jeremy Bannister on 3/12/22.
//

///
public extension Set {
    
    /// This method returns this set after inserting the given member into it.
    func inserting (_ newMember: Element) -> Self {
        self.mutated { $0.insert(newMember) }
    }
    
    /// This method returns this set after removing the given member from it.
    func removing (_ member: Element) -> Self {
        self.mutated { $0.remove(member) }
    }
}

///
public extension Set {
    
    ///
    func doesNotContain (_ element: Element) -> Bool {
        !self.contains(element)
    }
}
