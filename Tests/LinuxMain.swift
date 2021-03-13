import XCTest

import ClampTests

var tests = [XCTestCaseEntry]()
tests += BinaryFloatingPointClampTests.allTests()
tests += BinaryIntegerClampTests.allTests()
XCTMain(tests)
