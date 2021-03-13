// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Clamped",
    products: [
        .library(
            name: "Clamped",
            targets: ["Clamped"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Clamped",
            dependencies: []),
        .testTarget(
            name: "ClampedTests",
            dependencies: ["Clamped"]),
    ]
)
