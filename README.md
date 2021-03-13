# Clamped

Clamped is a library with the single purpse of providing `clamped()` functions to Swift's built-in integer and floating point types. The `clamped()` function returns a value clamped to the inclusive range of the passed-in minimum and maximum values.

## Usage

```swift
// using `clamped(lowerBound:upperBound:)`
5.clamped(lowerBound: 1, upperBound: 10) // 5
0.clamped(lowerBound: 1, upperBound: 10) // 1
11.clamped(lowerBound: 1, upperBound: 10) // 10

// using `ClosedRange`
5.clamped(to: 1...10) // 5
0.clamped(to: 1...10) // 1
11.clamped(to: 1...10) // 10
```

## Installation

### Swift Package Manager

To use Clamped with the Swift Package Manager, add a dependency to your Package.swift file:

```swift
let package = Package(
  dependencies: [
    .package(name: "Clamped", url: "https://github.com/shareup/clamped-apple.git", .upToNextMajor(from: "1.0.0"))
  ]
)
```

## License

The license for `Clamped` is the standard MIT license. You can find it in the `LICENSE` file.
