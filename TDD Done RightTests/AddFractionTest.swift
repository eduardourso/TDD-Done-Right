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

    func testDifferentDenominatorsWithoutReducing() {
        XCTAssertEqual(Fraction(5, 6), Fraction(1, 2).plus(Fraction(1, 3)))
    }
    
    func testReduceResultToWholeNumber() {
        XCTAssertEqual(Fraction(1), Fraction(1, 3).plus(Fraction(2, 3)))
    }

    func testOneDenominatorIsMultipleOfTheOther() {
        XCTAssertEqual(Fraction(11, 8), Fraction(3, 4).plus(Fraction(5, 8)))
    }

    func testCommonFactorInDenominators() {
        XCTAssertEqual(Fraction(11, 18), Fraction(1, 6).plus(Fraction(4, 9)))
    }

    func testReduceResultEvenWhenDenominatorsAreTheSame() {
        XCTAssertEqual(Fraction(3, 2), Fraction(3, 4).plus(Fraction(3, 4)))
    }

    func testNegativeFractionAndReducing() {
        XCTAssertEqual(Fraction(1, 2), Fraction(-1, 4).plus(Fraction(3, 4)))
        XCTAssertEqual(Fraction(-1, 8), Fraction(3, 8).plus(Fraction(-1, 2)))
    }

    func ignoreTestNegativeSignsEverywhere() {
        XCTAssertEqual(Fraction(1, 2), Fraction(1, -4).plus(Fraction(-3, -4)))
    }
}
