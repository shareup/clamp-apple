import XCTest
import Clamped

final class BinaryFloatingPointClampedTests: XCTestCase {
    func testClampedToLowerAndUpperBounds() throws {
         XCTAssertEqual(5.0, Double(5).clamped(lowerBound: 1, upperBound: 10))
         XCTAssertEqual(1.0, Double(0).clamped(lowerBound: 1, upperBound: 10))
         XCTAssertEqual(10, Double(11).clamped(lowerBound: 1, upperBound: 10))
     }

     func testClampedToClosedRange() throws {
         let range = ClosedRange<Double>(uncheckedBounds: (1, 10))
         XCTAssertEqual(5.0, Double(5).clamped(to: range))
         XCTAssertEqual(1.0, Double(0).clamped(to: range))
         XCTAssertEqual(10, Double(11).clamped(to: range))
     }

     func testClampedToRange() throws {
         let range = Range<Double>(uncheckedBounds: (1, 10))
         XCTAssertEqual(5.0, Double(5).clamped(to: range))
         XCTAssertEqual(1.0, Double(0).clamped(to: range))
         XCTAssertEqual(10, Double(11).clamped(to: range))
     }

    static var allTests = [
        ("testClampedToLowerAndUpperBounds", testClampedToLowerAndUpperBounds),
        ("testClampedToClosedRange", testClampedToClosedRange),
        ("testClampedToRange", testClampedToRange),
    ]
}
