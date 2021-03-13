import XCTest
import Clamp

final class BinaryFloatingPointClampTests: XCTestCase {
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

    func testClampToLowerAndUpperBounds() throws {
        var double: Double = 5

        double.clamp(lowerBound: 1, upperBound: 10)
        XCTAssertEqual(5, double)

        double.clamp(lowerBound: 1, upperBound: 4)
        XCTAssertEqual(4, double)

        double.clamp(lowerBound: 10, upperBound: 20)
        XCTAssertEqual(10, double)
    }

    func testClampToClosedRange() throws {
        var double: Double = 5

        double.clamp(to: 1...10)
        XCTAssertEqual(5, double)

        double.clamp(to: 1...4)
        XCTAssertEqual(4, double)

        double.clamp(to: 10...20)
        XCTAssertEqual(10, double)
    }
    
    static var allTests = [
        ("testClampedToLowerAndUpperBounds", testClampedToLowerAndUpperBounds),
        ("testClampedToClosedRange", testClampedToClosedRange),
        ("testClampToLowerAndUpperBounds", testClampToLowerAndUpperBounds),
        ("testClampToClosedRange", testClampToClosedRange),
    ]
}
