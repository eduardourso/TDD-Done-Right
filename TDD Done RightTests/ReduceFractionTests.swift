import XCTest
@testable import TDD_Done_Right

class ReduceFractionTests: XCTestCase {
    
  func testAlreadyInLowestTerms() {
      XCTAssertEqual(Fraction(3, 4), Fraction(3, 4))
  }

  func testReduceToNotWholeNumber() {

  }
    
}
