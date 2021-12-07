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
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/UnwrapOrThrowOperator",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "ExpressionErgonomics",
            dependencies: ["UnwrapOrThrowOperator"]
        ),
        .testTarget(
            name: "ExpressionErgonomics_tests",
            dependencies: ["ExpressionErgonomics"]
        ),
    ]
)
