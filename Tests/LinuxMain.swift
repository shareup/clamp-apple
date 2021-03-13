import XCTest

import ClampedTests

var tests = [XCTestCaseEntry]()
tests += BinaryFloatingPointClampedTests.allTests()
tests += BinaryIntegerClampedTests.allTests()
XCTMain(tests)
