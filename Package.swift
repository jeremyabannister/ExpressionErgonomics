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
            url: "https://github.com/jeremyabannister/Testable",
            from: "0.1.6"
        ),
    ],
    targets: [
        .target(
            name: "ExpressionErgonomics",
            dependencies: [
                "Testable",
            ]
        ),
        .target(
            name: "ExpressionErgonomicsTestToolkit",
            dependencies: [
                "ExpressionErgonomics",
                .product(name: "TestableTestToolkit", package: "Testable")
            ]
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
