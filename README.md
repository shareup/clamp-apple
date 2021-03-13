# Clamp

Clamp is a library with the single purpse of providing `clamp()` and `clamped()` functions to Swift's built-in integer and floating point types. The `clamp()` and `clamped()` functions limit a value to the inclusive range of the passed-in minimum and maximum values.

## Usage

```swift
// immutable version
5.clamped(lowerBound: 1, upperBound: 10) // returns 5
0.clamped(lowerBound: 1, upperBound: 10) // returns 1
11.clamped(lowerBound: 1, upperBound: 10) // returns 10

5.clamped(to: 1...10) // returns 5
0.clamped(to: 1...10) // returns 1
11.clamped(to: 1...10) // returns 10

// mutable version
var number = 5
number.clamp(to: 1...10) // no change
number.clamp(to: 1...4) // `number` is changed to 4
number.clamp(to: 10...20) // `number` is changed to 10
```

## Installation

### Swift Package Manager

To use Clamp with the Swift Package Manager, add a dependency to your Package.swift file:

```swift
let package = Package(
  dependencies: [
    .package(name: "Clamp", url: "https://github.com/shareup/clamp-apple.git", .upToNextMajor(from: "1.0.0"))
  ]
)
```

## License

The license for `Clamp` is the standard MIT license. You can find it in the `LICENSE` file.
