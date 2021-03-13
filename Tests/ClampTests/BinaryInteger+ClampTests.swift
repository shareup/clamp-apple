import XCTest
import Clamp

final class BinaryIntegerClampTests: XCTestCase {
    func testClampedToLowerAndUpperBounds() throws {
        XCTAssertEqual(5, 5.clamped(lowerBound: 1, upperBound: 10))
        XCTAssertEqual(1, 0.clamped(lowerBound: 1, upperBound: 10))
        XCTAssertEqual(10, 11.clamped(lowerBound: 1, upperBound: 10))
    }
    
    func testClampedToClosedRange() throws {
        let range = ClosedRange<Int>(uncheckedBounds: (1, 10))
        XCTAssertEqual(5, 5.clamped(to: range))
        XCTAssertEqual(1, 0.clamped(to: range))
        XCTAssertEqual(10, 11.clamped(to: range))
        XCTAssertEqual(10, 11.clamped(to: 1...10))
    }

    func testClampToLowerAndUpperBounds() throws {
        var integer: Int = 5

        integer.clamp(lowerBound: 1, upperBound: 10)
        XCTAssertEqual(5, integer)

        integer.clamp(lowerBound: 1, upperBound: 4)
        XCTAssertEqual(4, integer)

        integer.clamp(lowerBound: 10, upperBound: 20)
        XCTAssertEqual(10, integer)
    }

    func testClampToClosedRange() throws {
        var integer: Int = 5

        integer.clamp(to: 1...10)
        XCTAssertEqual(5, integer)

        integer.clamp(to: 1...4)
        XCTAssertEqual(4, integer)

        integer.clamp(to: 10...20)
        XCTAssertEqual(10, integer)
    }

    static var allTests = [
        ("testClampedToLowerAndUpperBounds", testClampedToLowerAndUpperBounds),
        ("testClampedToClosedRange", testClampedToClosedRange),
        ("testClampToLowerAndUpperBounds", testClampToLowerAndUpperBounds),
        ("testClampToClosedRange", testClampToClosedRange),
    ]
}
