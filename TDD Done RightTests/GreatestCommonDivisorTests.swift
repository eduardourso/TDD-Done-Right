import XCTest
@testable import TDD_Done_Right

class GreatestCommonDivisorTests: XCTestCase {

    func testReflexiveDenominators() {
        XCTAssertEqual(1, NumberTheory.gcd(1, 1))
        XCTAssertEqual(2, NumberTheory.gcd(2, 2))
        XCTAssertEqual(1, NumberTheory.gcd(-1, -1))
    }

    func testRelativelyPrimeDenominator() {
        XCTAssertEqual(1, NumberTheory.gcd(2, 3))
        XCTAssertEqual(1, NumberTheory.gcd(4, 7))
        XCTAssertEqual(1, NumberTheory.gcd(-2, -3))
    }

    func testOneIsMultipleOfTheOther() {
        XCTAssertEqual(3, NumberTheory.gcd(3, 9))
        XCTAssertEqual(5, NumberTheory.gcd(5, 30))
    }

    func testCommonFactor() {
        XCTAssertEqual(2, NumberTheory.gcd(6, 8))
        XCTAssertEqual(7, NumberTheory.gcd(49, 315))
        XCTAssertEqual(4, NumberTheory.gcd(-24, -28))
    }

    func testNegatives() {
        XCTAssertEqual(4, NumberTheory.gcd(24, -28))
        XCTAssertEqual(4, NumberTheory.gcd(-24, 28))
    }

    func testZero() {
        XCTAssertEqual(1, NumberTheory.gcd(1, 0))
        XCTAssertEqual(5, NumberTheory.gcd(0, 5))
        XCTAssertEqual(0, NumberTheory.gcd(0, 0))
    }
}
