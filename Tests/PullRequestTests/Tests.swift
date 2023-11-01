#if !DEBUG

import Numberick
import PullRequest
import XCTest

//*============================================================================*
// MARK: * Tests
//*============================================================================*

final class Tests: XCTestCase {
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Foundation x 000
    //=------------------------------------------------------------------------=
    
    func test_Int_Foundation_000() {
        var x = blackHoleIdentity(Int.min)
        var y = blackHoleIdentity(Int.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000)
            blackHole(y.numericStringRepresentation000)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt_Foundation_000() {
        var x = blackHoleIdentity(UInt.max / 2 + 1)
        var y = blackHoleIdentity(UInt.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000)
            blackHole(y.numericStringRepresentation000)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int256_Foundation_000() {
        var x = blackHoleIdentity(Int256.min)
        var y = blackHoleIdentity(Int256.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000)
            blackHole(y.numericStringRepresentation000)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt256_Foundation_000() {
        var x = blackHoleIdentity(UInt256.max / 2 + 1)
        var y = blackHoleIdentity(UInt256.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000)
            blackHole(y.numericStringRepresentation000)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Foundation x 001
    //=------------------------------------------------------------------------=
    
    func test_Int_Foundation_001() {
        var x = blackHoleIdentity(Int.min)
        var y = blackHoleIdentity(Int.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001)
            blackHole(y.numericStringRepresentation001)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt_Foundation_001() {
        var x = blackHoleIdentity(UInt.max / 2 + 1)
        var y = blackHoleIdentity(UInt.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001)
            blackHole(y.numericStringRepresentation001)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int256_Foundation_001() {
        var x = blackHoleIdentity(Int256.min)
        var y = blackHoleIdentity(Int256.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001)
            blackHole(y.numericStringRepresentation001)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt256_Foundation_001() {
        var x = blackHoleIdentity(UInt256.max / 2 + 1)
        var y = blackHoleIdentity(UInt256.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001)
            blackHole(y.numericStringRepresentation001)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Foundation x 002
    //=------------------------------------------------------------------------=
    
    func test_Int_Foundation_002() {
        var x = blackHoleIdentity(Int.min)
        var y = blackHoleIdentity(Int.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation002)
            blackHole(y.numericStringRepresentation002)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt_Foundation_002() {
        var x = blackHoleIdentity(UInt.max / 2 + 1)
        var y = blackHoleIdentity(UInt.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation002)
            blackHole(y.numericStringRepresentation002)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int256_Foundation_002() {
        var x = blackHoleIdentity(Int256.min)
        var y = blackHoleIdentity(Int256.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation002)
            blackHole(y.numericStringRepresentation002)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt256_Foundation_002() {
        var x = blackHoleIdentity(UInt256.max / 2 + 1)
        var y = blackHoleIdentity(UInt256.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation002)
            blackHole(y.numericStringRepresentation002)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Numberick
    //=------------------------------------------------------------------------=
    
    func test_Int_Numberick() {
        var x = blackHoleIdentity(Int.min)
        var y = blackHoleIdentity(Int.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.description)
            blackHole(y.description)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt_Numberick() {
        var x = blackHoleIdentity(UInt.max / 2 + 1)
        var y = blackHoleIdentity(UInt.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.description)
            blackHole(y.description)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int256_Numberick() {
        var x = blackHoleIdentity(Int256.min)
        var y = blackHoleIdentity(Int256.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.description)
            blackHole(y.description)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt256_Numberick() {
        var x = blackHoleIdentity(UInt256.max / 2 + 1)
        var y = blackHoleIdentity(UInt256.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.description)
            blackHole(y.description)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
}

#endif
