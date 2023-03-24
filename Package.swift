// swift-tools-version:5.7

///
import PackageDescription

///
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
            url: "https://github.com/jeremyabannister/Testable-module",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "ExpressionErgonomics",
            dependencies: [
                "Testable-module",
            ]
        ),
        .target(
            name: "ExpressionErgonomicsTestToolkit",
            dependencies: [
                "ExpressionErgonomics",
                .product(
                    name: "TestableTestToolkit",
                    package: "Testable-module"
                ),
            ]
        ),
        .testTarget(
            name: "ExpressionErgonomics-tests",
            dependencies: [
                "ExpressionErgonomicsTestToolkit",
            ]
        ),
        .testTarget(
            name: "ExpressionErgonomicsTestToolkit-tests",
            dependencies: [
                "ExpressionErgonomicsTestToolkit",
            ]
        ),
    ]
)
