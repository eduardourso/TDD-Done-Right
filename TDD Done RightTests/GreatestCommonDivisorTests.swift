import XCTest
@testable import TDD_Done_Right

class GreatestCommonDivisorTests: XCTestCase {

    func testReflexiveDenominators() {
        XCTAssertEqual(1, gcd(1, 1))
        XCTAssertEqual(2, gcd(2, 2))
        XCTAssertEqual(1, gcd(-1, -1))
    }

    func testRelativelyPrimeDenominator() {
        XCTAssertEqual(1, gcd(2, 3))
        XCTAssertEqual(1, gcd(4, 7))
        XCTAssertEqual(1, gcd(-2, -3))
    }

    func testOneIsMultipleOfTheOther() {
        XCTAssertEqual(3, gcd(3, 9))
        XCTAssertEqual(5, gcd(5, 30))
    }

    func testCommonFactor() {
        XCTAssertEqual(2, gcd(6, 8))
        XCTAssertEqual(7, gcd(49, 315))
        XCTAssertEqual(4, gcd(-24, -28))
    }

    func testNegatives() {
        XCTAssertEqual(4, gcd(24, -28))
        XCTAssertEqual(4, gcd(-24, 28))
    }

    private func gcd(_ a:Int, _ b:Int) -> Int {
        var denominatorB = b
        var denominatorA = a
        while denominatorB != 0 {
            let t = denominatorB
            denominatorB = denominatorA % t
            denominatorA = t
        }
        return abs(denominatorA)
    }
}
