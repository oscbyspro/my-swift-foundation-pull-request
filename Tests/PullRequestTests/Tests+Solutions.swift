import Foundation
import PullRequest
import XCTest

//*============================================================================*
// MARK: * Tests x Solution
//*============================================================================*

final class TestsOnSolutions: XCTestCase {
    
    //=------------------------------------------------------------------------=
    // MARK: Tests
    //=------------------------------------------------------------------------=
    
    func testMemoryLayout() {
        XCTAssertEqual(2 * MemoryLayout<UInt>.stride, MemoryLayout<String>.size)
        XCTAssertEqual(4 * MemoryLayout<UInt>.stride, MemoryLayout<ArraySlice<UInt8>>.size)
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Core Integer
    //=------------------------------------------------------------------------=
    
    func testInt32() {
        check( Int32(truncatingIfNeeded: 0x00000000 as UInt32), expectation:           "0")
        check( Int32(truncatingIfNeeded: 0x03020100 as UInt32), expectation:    "50462976")
        check( Int32(truncatingIfNeeded: 0x7fffffff as UInt32), expectation:  "2147483647")
        check( Int32(truncatingIfNeeded: 0x80000000 as UInt32), expectation: "-2147483648")
        check( Int32(truncatingIfNeeded: 0x81807f7e as UInt32), expectation: "-2122285186")
        check( Int32(truncatingIfNeeded: 0xfffefdfc as UInt32), expectation:      "-66052")
        check( Int32(truncatingIfNeeded: 0xffffffff as UInt32), expectation:          "-1")
    }
    
    func testUInt32() {
        check(UInt32(truncatingIfNeeded: 0x00000000 as UInt32), expectation:           "0")
        check(UInt32(truncatingIfNeeded: 0x03020100 as UInt32), expectation:    "50462976")
        check(UInt32(truncatingIfNeeded: 0x7fffffff as UInt32), expectation:  "2147483647")
        check(UInt32(truncatingIfNeeded: 0x80000000 as UInt32), expectation:  "2147483648")
        check(UInt32(truncatingIfNeeded: 0x81807f7e as UInt32), expectation:  "2172682110")
        check(UInt32(truncatingIfNeeded: 0xfffefdfc as UInt32), expectation:  "4294901244")
        check(UInt32(truncatingIfNeeded: 0xffffffff as UInt32), expectation:  "4294967295")
    }
    
    func testInt64() {
        check( Int64(truncatingIfNeeded: 0x0000000000000000 as UInt64), expectation:                    "0")
        check( Int64(truncatingIfNeeded: 0x0706050403020100 as UInt64), expectation:   "506097522914230528")
        check( Int64(truncatingIfNeeded: 0x7fffffffffffffff as UInt64), expectation:  "9223372036854775807")
        check( Int64(truncatingIfNeeded: 0x8000000000000000 as UInt64), expectation: "-9223372036854775808")
        check( Int64(truncatingIfNeeded: 0x838281807f7e7d7c as UInt64), expectation: "-8970465118873813636")
        check( Int64(truncatingIfNeeded: 0xfffefdfcfbfaf9f8 as UInt64), expectation:     "-283686952306184")
        check( Int64(truncatingIfNeeded: 0xffffffffffffffff as UInt64), expectation:                   "-1")
    }
    
    func testUInt64() {
        check(UInt64(truncatingIfNeeded: 0x0000000000000000 as UInt64), expectation:                    "0")
        check(UInt64(truncatingIfNeeded: 0x0706050403020100 as UInt64), expectation:   "506097522914230528")
        check(UInt64(truncatingIfNeeded: 0x7fffffffffffffff as UInt64), expectation:  "9223372036854775807")
        check(UInt64(truncatingIfNeeded: 0x8000000000000000 as UInt64), expectation:  "9223372036854775808")
        check(UInt64(truncatingIfNeeded: 0x838281807f7e7d7c as UInt64), expectation:  "9476278954835737980")
        check(UInt64(truncatingIfNeeded: 0xfffefdfcfbfaf9f8 as UInt64), expectation: "18446460386757245432")
        check(UInt64(truncatingIfNeeded: 0xffffffffffffffff as UInt64), expectation: "18446744073709551615")
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Big Integer
    //=------------------------------------------------------------------------=
    
    func testInt128() {
        check(x64:[0x0000000000000000, 0x0000000000000000] as [UInt64], isSigned: true,  expectation:                                        "0")
        check(x64:[0x0706050403020100, 0x0f0e0d0c0b0a0908] as [UInt64], isSigned: true,  expectation:   "20011376718272490338853433276725592320")
        check(x64:[0xffffffffffffffff, 0x7fffffffffffffff] as [UInt64], isSigned: true,  expectation:  "170141183460469231731687303715884105727") //  Int128.max
        check(x64:[0x0000000000000000, 0x8000000000000000] as [UInt64], isSigned: true,  expectation: "-170141183460469231731687303715884105728") //  Int128.min
        check(x64:[0xf7f6f5f4f3f2f1f0, 0xfffefdfcfbfaf9f8] as [UInt64], isSigned: true,  expectation:      "-5233100606242806050955395731361296")
        check(x64:[0xffffffffffffffff, 0xffffffffffffffff] as [UInt64], isSigned: true,  expectation:                                       "-1")
    }
    
    func testUInt128() {
        check(x64:[0x0000000000000000, 0x0000000000000000] as [UInt64], isSigned: false, expectation:                                        "0") // UInt128.min
        check(x64:[0x0706050403020100, 0x0f0e0d0c0b0a0908] as [UInt64], isSigned: false, expectation:   "20011376718272490338853433276725592320")
        check(x64:[0x0000000000000000, 0x8000000000000000] as [UInt64], isSigned: false, expectation:  "170141183460469231731687303715884105728")
        check(x64:[0xf7f6f5f4f3f2f1f0, 0xfffefdfcfbfaf9f8] as [UInt64], isSigned: false, expectation:  "340277133820332220657323652036036850160")
        check(x64:[0xffffffffffffffff, 0x7fffffffffffffff] as [UInt64], isSigned: false, expectation:  "170141183460469231731687303715884105727")
        check(x64:[0xffffffffffffffff, 0xffffffffffffffff] as [UInt64], isSigned: false, expectation:  "340282366920938463463374607431768211455") // UInt128.max
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Tests x Big Integer x Miscellaneous
    //=------------------------------------------------------------------------=
    
    func testWordsIsEmptyResultsInZero() {
        check(words:[              ] as [UInt], isSigned: true,  expectation:  "0")
        check(words:[              ] as [UInt], isSigned: false, expectation:  "0")
    }
    
    func testSignExtendingDoesNotChangeTheResult() {
        check(words:[ 0            ] as [UInt], isSigned: true,  expectation:  "0")
        check(words:[ 0,  0        ] as [UInt], isSigned: true,  expectation:  "0")
        check(words:[ 0,  0,  0    ] as [UInt], isSigned: true,  expectation:  "0")
        check(words:[ 0,  0,  0,  0] as [UInt], isSigned: true,  expectation:  "0")
        
        check(words:[~0            ] as [UInt], isSigned: true,  expectation: "-1")
        check(words:[~0, ~0        ] as [UInt], isSigned: true,  expectation: "-1")
        check(words:[~0, ~0, ~0    ] as [UInt], isSigned: true,  expectation: "-1")
        check(words:[~0, ~0, ~0, ~0] as [UInt], isSigned: true,  expectation: "-1")
        
        check(words:[ 0            ] as [UInt], isSigned: false, expectation:  "0")
        check(words:[ 0,  0        ] as [UInt], isSigned: false, expectation:  "0")
        check(words:[ 0,  0,  0    ] as [UInt], isSigned: false, expectation:  "0")
        check(words:[ 0,  0,  0,  0] as [UInt], isSigned: false, expectation:  "0")
    }
    
    //=------------------------------------------------------------------------=
    // MARK: Assertions
    //=------------------------------------------------------------------------=
    
    func check(_ integer: some BinaryInteger, expectation: String, file: StaticString = #file, line: UInt = #line) {
        check(ascii: integer.numericStringRepresentation000,       expectation: expectation, file: file, line: line)
        check(ascii: integer.numericStringRepresentation000X,      expectation: expectation, file: file, line: line)
        check(ascii: integer.numericStringRepresentation001,       expectation: expectation, file: file, line: line)
        check(ascii: integer.numericStringRepresentation001X,      expectation: expectation, file: file, line: line)
        check(ascii: integer.numericStringRepresentation002 .utf8, expectation: expectation, file: file, line: line)
        check(ascii: integer.numericStringRepresentation002X.utf8, expectation: expectation, file: file, line: line)
    }
    
    func check(x64: [UInt64], isSigned: Bool, expectation: String, file: StaticString = #file, line: UInt = #line) {
        check(words: x64.flatMap(\.words), isSigned: isSigned, expectation: expectation, file: file, line: line)
    }
    
    func check(words: [UInt], isSigned: Bool, expectation: String, file: StaticString = #file, line: UInt = #line) {
        check(ascii: numericStringRepresentationForBinaryInteger001 (words: words, isSigned: isSigned),      expectation: expectation, file: file, line: line)
        check(ascii: numericStringRepresentationForBinaryInteger001X(words: words, isSigned: isSigned),      expectation: expectation, file: file, line: line)
        check(ascii: numericStringRepresentationForBinaryInteger002 (words: words, isSigned: isSigned).utf8, expectation: expectation, file: file, line: line)
        check(ascii: numericStringRepresentationForBinaryInteger002X(words: words, isSigned: isSigned).utf8, expectation: expectation, file: file, line: line)
    }
    
    func check(ascii: some Collection<UInt8>, expectation: String, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(String(decoding: ascii, as: Unicode.ASCII.self), expectation, file: file, line: line)
    }
}
