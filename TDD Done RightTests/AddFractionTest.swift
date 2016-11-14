import XCTest
@testable import TDD_Done_Right

class AddFractionTest: XCTestCase {

    func testZeroPlusZero() {
        let sum = Fraction(0).plus(Fraction(0))
        XCTAssertEqual(Fraction(0), sum)
    }

    func testNonZeroPlusZero() {
        let sum = Fraction(3).plus(Fraction(0))
        XCTAssertEqual(Fraction(3), sum)
    }

    func testZeroPlusNonZero() {
        let sum = Fraction(0).plus(Fraction(5))
        XCTAssertEqual(Fraction(5), sum)
    }

    func testNonNegativeNonZeroOperands() {
        let sum = Fraction(3).plus(Fraction(4))
        XCTAssertEqual(Fraction(7), sum)
    }

    func testNegativeInputsAndNegativeOutputs() {
        let sum = Fraction(-3).plus(Fraction(1))
        XCTAssertEqual(Fraction(-2), sum)
    }

    func testNonTrivialButCommonDenominator() {
        let sum = Fraction(1, 5).plus(Fraction(2, 5))
        XCTAssertEqual(Fraction(3, 5), sum)
    }
}
