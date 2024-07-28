// swift-tools-version:5.10

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
            url: "https://github.com/jeremyabannister/AssertionToolkit",
            "0.1.1" ..< "0.2.0"
        ),
    ],
    targets: [
        .target(
            name: "ExpressionErgonomics",
            dependencies: [
                "AssertionToolkit",
            ]
        ),
        .target(
            name: "ExpressionErgonomicsTestToolkit",
            dependencies: [
                "ExpressionErgonomics",
                .product(
                    name: "AssertionTestToolkit",
                    package: "AssertionToolkit"
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
