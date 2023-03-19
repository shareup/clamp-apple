import XCTest

#if !canImport(ObjectiveC)
    public func allTests() -> [XCTestCaseEntry] {
        [
            testCase(BinaryFloatingPointClampTests.allTests),
            testCase(BinaryIntegerClampTests.allTests),
        ]
    }
#endif
