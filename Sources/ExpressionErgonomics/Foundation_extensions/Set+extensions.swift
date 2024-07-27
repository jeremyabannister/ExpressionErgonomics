//
//  Set+extensions.swift
//  
//
//  Created by Jeremy Bannister on 3/12/22.
//

///
extension Set {
    
    ///
    public func tryInserting(
        _ newMember: Element?
    ) -> Self {
        
        ///
        newMember
            .map {
                self.inserting($0)
            }
            ?? self
    }
}

///
extension Set {
    
    /// This method returns this set after inserting the given member into it.
    public func inserting(
        _ newMember: Element
    ) -> Self {
        
        ///
        self.mutated {
            $0.insert(newMember)
        }
    }
    
    /// This method returns this set after removing the given member from it.
    public func removing(
        _ member: Element
    ) -> Self {
        
        ///
        self.mutated {
            $0.remove(member)
        }
    }
}

///
extension Set {
    
    ///
    public func doesNotContain(
        _ element: Element
    ) -> Bool {
        
        ///
        !self.contains(element)
    }
}
