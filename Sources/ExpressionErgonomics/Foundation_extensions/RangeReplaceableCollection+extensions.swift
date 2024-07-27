//
//  RangeReplaceableCollection+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/9/21.
//

///
extension RangeReplaceableCollection {
    
    ///
    public func tryAppending<
        Elements: Collection
    >(
        _ elements: Elements?
    ) -> Self
    where Elements.Element == Element {
        
        ///
        self.tryInserting(
            elements,
            at: endIndex
        )
    }
    
    ///
    public func appending<
        Elements: Collection
    >(
        _ elements: Elements
    ) -> Self
    where Elements.Element == Element {
        
        ///
        self.inserting(
            elements,
            at: endIndex
        )
    }
    
    ///
    public func tryAppending(
        _ element: Element?
    ) -> Self {
        
        ///
        self.tryInserting(
            element,
            at: endIndex
        )
    }
    
    ///
    public func appending(
        _ element: Element
    ) -> Self {
        
        ///
        self.inserting(
            element,
            at: endIndex
        )
    }
}

///
extension RangeReplaceableCollection {
    
    ///
    public func tryPrepending<
        Elements: Collection
    >(
        _ elements: Elements?
    ) -> Self
    where Elements.Element == Element {
        
        ///
        self.tryInserting(
            elements,
            at: startIndex
        )
    }
    
    ///
    public func prepending<
        Elements: Collection
    >(
        _ elements: Elements
    ) -> Self
    where Elements.Element == Element {
        
        ///
        self.inserting(
            elements,
            at: startIndex
        )
    }
    
    ///
    public func tryPrepending(
        _ element: Element?
    ) -> Self {
        
        ///
        self.tryInserting(
            element,
            at: startIndex
        )
    }
    
    ///
    public func prepending(
        _ element: Element
    ) -> Self {
        
        ///
        self.inserting(
            element,
            at: startIndex
        )
    }
}

///
extension RangeReplaceableCollection {
    
    ///
    public func tryInserting<
        Elements: Collection
    >(
        _ elements: Elements?,
        at index: Index
    ) -> Self
    where Elements.Element == Element {
        
        ///
        if let elements = elements {
            
            ///
            return self.inserting(elements, at: index)
            
        ///
        } else {
            
            ///
            return self
        }
    }
    
    ///
    public func inserting<
        Elements: Collection
    >(
        _ elements: Elements,
        at index: Index
    ) -> Self
    where Elements.Element == Element {
        
        ///
        var copy = self
        
        ///
        copy.insert(contentsOf: elements, at: index)
        
        ///
        return copy
    }
    
    ///
    public func tryInserting(
        _ element: Element?,
        at index: Index
    ) -> Self {
        
        ///
        if let element = element {
            
            ///
            return self.inserting(element, at: index)
            
        ///
        } else {
            
            ///
            return self
        }
    }
    
    ///
    public func inserting(
        _ element: Element,
        at index: Index
    ) -> Self {
        
        ///
        var copy = self
        
        ///
        copy.insert(element, at: index)
        
        ///
        return copy
    }
}
