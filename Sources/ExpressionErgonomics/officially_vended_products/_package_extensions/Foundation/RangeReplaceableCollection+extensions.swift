//
//  RangeReplaceableCollection+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/9/21.
//

///
public extension RangeReplaceableCollection {
    
    ///
    func tryAppending
        <Elements: Collection>
        (_ elements: Elements?)
    -> Self
    where Elements.Element == Element {
        
        self.tryInserting(elements, at: endIndex)
    }
    
    ///
    func appending
        <Elements: Collection>
        (_ elements: Elements)
    -> Self
    where Elements.Element == Element {
        
        self.inserting(elements, at: endIndex)
    }
    
    ///
    func tryAppending (_ element: Element?) -> Self {
        self.tryInserting(element, at: endIndex)
    }
    
    ///
    func appending (_ element: Element) -> Self {
        self.inserting(element, at: endIndex)
    }
}

///
public extension RangeReplaceableCollection {
    
    ///
    func tryPrepending
        <Elements: Collection>
        (_ elements: Elements?)
    -> Self
    where Elements.Element == Element {
        
        self.tryInserting(elements, at: startIndex)
    }
    
    ///
    func prepending
        <Elements: Collection>
        (_ elements: Elements)
    -> Self
    where Elements.Element == Element {
        
        self.inserting(elements, at: startIndex)
    }
    
    ///
    func tryPrepending (_ element: Element?) -> Self {
        self.tryInserting(element, at: startIndex)
    }
    
    ///
    func prepending (_ element: Element) -> Self {
        self.inserting(element, at: startIndex)
    }
}

///
public extension RangeReplaceableCollection {
    
    ///
    func tryInserting
        <Elements: Collection>
        (_ elements: Elements?,
     at index: Index)
    -> Self
    where Elements.Element == Element {
        
        if let elements = elements {
            return self.inserting(elements, at: index)
        } else {
            return self
        }
    }
    
    ///
    func inserting
        <Elements: Collection>
        (_ elements: Elements,
         at index: Index)
    -> Self
    where Elements.Element == Element {
        
        var copy = self
        copy.insert(contentsOf: elements, at: index)
        return copy
    }
    
    ///
    func tryInserting (_ element: Element?, at index: Index) -> Self {
        if let element = element {
            return self.inserting(element, at: index)
        } else {
            return self
        }
    }
    
    ///
    func inserting (_ element: Element, at index: Index) -> Self {
        var copy = self
        copy.insert(element, at: index)
        return copy
    }
}
