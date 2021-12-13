// swift-tools-version:5.4

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
            url: "https://github.com/jeremyabannister/Testable",
            from: "0.1.2"
        ),
    ],
    targets: [
        .target(
            name: "ExpressionErgonomics",
            dependencies: []
        ),
        .target(
            name: "ExpressionErgonomicsTestToolkit",
            dependencies: ["ExpressionErgonomics", "Testable"]
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
