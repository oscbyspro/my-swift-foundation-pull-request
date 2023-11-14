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
    
    func test_PlusMinus1_Int_Foundation_000() {
        var x = blackHoleIdentity(Int(-1))
        var y = blackHoleIdentity(Int( 1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000)
            blackHole(y.numericStringRepresentation000)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Plus1_UInt_Foundation_000() {
        var x = blackHoleIdentity(UInt(1))
        var y = blackHoleIdentity(UInt(1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000)
            blackHole(y.numericStringRepresentation000)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
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
    // MARK: Tests x Foundation x 000X
    //=------------------------------------------------------------------------=
    
    func test_PlusMinus1_Int_Foundation_000X() {
        var x = blackHoleIdentity(Int(-1))
        var y = blackHoleIdentity(Int( 1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000X)
            blackHole(y.numericStringRepresentation000X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Plus1_UInt_Foundation_000X() {
        var x = blackHoleIdentity(UInt(1))
        var y = blackHoleIdentity(UInt(1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000X)
            blackHole(y.numericStringRepresentation000X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int_Foundation_000X() {
        var x = blackHoleIdentity(Int.min)
        var y = blackHoleIdentity(Int.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000X)
            blackHole(y.numericStringRepresentation000X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt_Foundation_000X() {
        var x = blackHoleIdentity(UInt.max / 2 + 1)
        var y = blackHoleIdentity(UInt.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000X)
            blackHole(y.numericStringRepresentation000X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int256_Foundation_000X() {
        var x = blackHoleIdentity(Int256.min)
        var y = blackHoleIdentity(Int256.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000X)
            blackHole(y.numericStringRepresentation000X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt256_Foundation_000X() {
        var x = blackHoleIdentity(UInt256.max / 2 + 1)
        var y = blackHoleIdentity(UInt256.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation000X)
            blackHole(y.numericStringRepresentation000X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Foundation x 001
    //=------------------------------------------------------------------------=
    
    func test_PlusMinus1_Int_Foundation_001() {
        var x = blackHoleIdentity(Int(-1))
        var y = blackHoleIdentity(Int( 1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001)
            blackHole(y.numericStringRepresentation001)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Plus1_UInt_Foundation_001() {
        var x = blackHoleIdentity(UInt(1))
        var y = blackHoleIdentity(UInt(1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001)
            blackHole(y.numericStringRepresentation001)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
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
    // MARK: Tests x Foundation x 001X
    //=------------------------------------------------------------------------=
    
    func test_PlusMinus1_Int_Foundation_001X() {
        var x = blackHoleIdentity(Int(-1))
        var y = blackHoleIdentity(Int( 1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001X)
            blackHole(y.numericStringRepresentation001X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Plus1_UInt_Foundation_001X() {
        var x = blackHoleIdentity(UInt(1))
        var y = blackHoleIdentity(UInt(1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001X)
            blackHole(y.numericStringRepresentation001X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int_Foundation_001X() {
        var x = blackHoleIdentity(Int.min)
        var y = blackHoleIdentity(Int.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001X)
            blackHole(y.numericStringRepresentation001X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt_Foundation_001X() {
        var x = blackHoleIdentity(UInt.max / 2 + 1)
        var y = blackHoleIdentity(UInt.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001X)
            blackHole(y.numericStringRepresentation001X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int256_Foundation_001X() {
        var x = blackHoleIdentity(Int256.min)
        var y = blackHoleIdentity(Int256.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001X)
            blackHole(y.numericStringRepresentation001X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt256_Foundation_001X() {
        var x = blackHoleIdentity(UInt256.max / 2 + 1)
        var y = blackHoleIdentity(UInt256.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(x.numericStringRepresentation001X)
            blackHole(y.numericStringRepresentation001X)
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Numberick
    //=------------------------------------------------------------------------=
        
    func test_PlusMinus1_Int_Numberick() {
        var x = blackHoleIdentity(Int(-1))
        var y = blackHoleIdentity(Int( 1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Plus1_UInt_Numberick() {
        var x = blackHoleIdentity(UInt(1))
        var y = blackHoleIdentity(UInt(1))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int_Numberick() {
        var x = blackHoleIdentity(Int.min)
        var y = blackHoleIdentity(Int.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt_Numberick() {
        var x = blackHoleIdentity(UInt.max / 2 + 1)
        var y = blackHoleIdentity(UInt.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int256_Numberick() {
        var x = blackHoleIdentity(Int256.min)
        var y = blackHoleIdentity(Int256.max)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt256_Numberick() {
        var x = blackHoleIdentity(UInt256.max / 2 + 1)
        var y = blackHoleIdentity(UInt256.max / 2 + 0)
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Stdlib
    //=------------------------------------------------------------------------=
    
    func test_PlusMinus1_Int_Stdlib() {
        var x = blackHoleIdentity(someSwiftFixedWidthInteger(Int(-1)))
        var y = blackHoleIdentity(someSwiftFixedWidthInteger(Int( 1)))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Plus1_UInt_Stdlib() {
        var x = blackHoleIdentity(someSwiftFixedWidthInteger(UInt(1)))
        var y = blackHoleIdentity(someSwiftFixedWidthInteger(UInt(1)))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int_Stdlib() {
        var x = blackHoleIdentity(someSwiftFixedWidthInteger(Int.min))
        var y = blackHoleIdentity(someSwiftFixedWidthInteger(Int.max))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt_Stdlib() {
        var x = blackHoleIdentity(someSwiftFixedWidthInteger(UInt.max / 2 + 1))
        var y = blackHoleIdentity(someSwiftFixedWidthInteger(UInt.max / 2 + 0))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_Int256_Stdlib() {
        var x = blackHoleIdentity(someSwiftFixedWidthInteger(Int256.min))
        var y = blackHoleIdentity(someSwiftFixedWidthInteger(Int256.max))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
    
    func test_UInt256_Stdlib() {
        var x = blackHoleIdentity(someSwiftFixedWidthInteger(UInt256.max / 2 + 1))
        var y = blackHoleIdentity(someSwiftFixedWidthInteger(UInt256.max / 2 + 0))
        
        for _ in 0 ..< 1_000_000 {
            blackHole(String(x, radix: 10))
            blackHole(String(y, radix: 10))
            
            blackHoleInoutIdentity(&x)
            blackHoleInoutIdentity(&y)
        }
    }
}

#endif
