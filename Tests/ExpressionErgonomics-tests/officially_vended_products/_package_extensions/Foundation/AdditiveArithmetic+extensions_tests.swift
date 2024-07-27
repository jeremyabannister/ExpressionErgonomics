//
//  AdditiveArithmetic+extensions_tests.swift
//  
//
//  Created by Jeremy Bannister on 12/10/21.
//

///
extension AdditiveArithmetic_tests {
    
    ///
    func test_plus () throws {
        func test <T> (_ a: T,
                       _ b: T,
                       _ c: T) throws
            where T: AdditiveArithmetic {
            
            try a.plus(b).assertEqual(to: c)
        }
        try test(0, 0, 0)
        try test(1, 1, 2)
        try test(1, 2, 3)
        try test(2, 2, 4)
        try test(0, 100, 100)
        try test(-60, 0, -60)
        try test(-1, 1, 0)
        try test(9, 100, 109)
        try test(18, -2, 16)
    }
    
    ///
    func test_plusEquals () throws {
        func test <T> (_ a: T,
                       _ b: T,
                       _ c: T) throws
            where T: AdditiveArithmetic {
            
            var copy = a
            copy.plusEquals(b)
            try copy.assertEqual(to: c)
        }
        try test(0, 0, 0)
        try test(1, 1, 2)
        try test(1, 2, 3)
        try test(2, 2, 4)
        try test(0, 100, 100)
        try test(-60, 0, -60)
        try test(-1, 1, 0)
        try test(9, 100, 109)
        try test(18, -2, 16)
    }
    
    ///
    func test_minus () throws {
        func test <T> (_ a: T,
                       _ b: T,
                       _ c: T) throws
            where T: AdditiveArithmetic {
            
            try a.minus(b).assertEqual(to: c)
        }
        try test(0, 0, 0)
        try test(1, 1, 0)
        try test(1, 2, -1)
        try test(2, 2, 0)
        try test(0, 100, -100)
        try test(-60, 0, -60)
        try test(-1, 1, -2)
        try test(9, 100, -91)
        try test(18, -2, 20)
    }
    
    ///
    func test_minusEquals () throws {
        func test <T> (_ a: T,
                       _ b: T,
                       _ c: T) throws
            where T: AdditiveArithmetic {
            
            var copy = a
            copy.minusEquals(b)
            try copy.assertEqual(to: c)
        }
        try test(0, 0, 0)
        try test(1, 1, 0)
        try test(1, 2, -1)
        try test(2, 2, 0)
        try test(0, 100, -100)
        try test(-60, 0, -60)
        try test(-1, 1, -2)
        try test(9, 100, -91)
        try test(18, -2, 20)
    }
}
