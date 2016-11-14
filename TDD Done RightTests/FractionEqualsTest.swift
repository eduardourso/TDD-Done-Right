import XCTest
@testable import TDD_Done_Right

class FractionEqualsTest: XCTestCase {
    
    func testSameNumeratorAndDenominator() {
        XCTAssertEqual(Fraction(3, 5), Fraction(3, 5))
    }

    func testDifferentNumerators() {
        XCTAssertNotEqual(Fraction(2, 5), Fraction(1, 5))
    }

    func testDifferentDenominators() {
        XCTAssertNotEqual(Fraction(3, 5), Fraction(3, 4))
    }

    func testWholeNumberEqualsFraction() {
        XCTAssertEqual(Fraction(5, 1), Fraction(5))
    }

    func testWholeNumberIsNotTheSameAsWholeNumber() {
        XCTAssertNotEqual(Fraction(5), Fraction(4))
    }

    func testReduceFraction() {
        XCTAssertEqual(Fraction(2, 4), Fraction(4, 8))
    }

}
