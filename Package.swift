// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExpressionErgonomics",
    products: [
        .library(
            name: "ExpressionErgonomics",
            targets: ["ExpressionErgonomics"]
        ),
        .library(
            name: "ExpressionErgonomicsTestToolkit",
            targets: ["ExpressionErgonomicsTestToolkit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/FoundationTestToolkit",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/jeremyabannister/XCTestTestToolkit",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "ExpressionErgonomics",
            dependencies: []
        ),
        .target(
            name: "ExpressionErgonomicsTestToolkit",
            dependencies: ["ExpressionErgonomics", "FoundationTestToolkit", "XCTestTestToolkit"]
        ),
        .testTarget(
            name: "ExpressionErgonomics_tests",
            dependencies: ["ExpressionErgonomicsTestToolkit"]
        ),
        .testTarget(
            name: "ExpressionErgonomicsTestToolkit_tests",
            dependencies: ["ExpressionErgonomicsTestToolkit"]
        ),
    ]
)
