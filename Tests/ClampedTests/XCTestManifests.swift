import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BinaryFloatingPointClampedTests.allTests),
        testCase(BinaryIntegerClampedTests.allTests),
    ]
}
#endif
