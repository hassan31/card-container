// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Card",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Card",
            targets: ["Card"]),
    ],
    dependencies: [
        // Add DSColors package dependency
        .package(url: "https://github.com/hassan31/ds-colors.git", from: "1.0.1"),
        .package(url: "https://github.com/hassan31/ds-spacing", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Card",
            dependencies: [
                // Add DSColors as a dependency for your Card target
                .product(name: "DSColors", package: "ds-colors"),
                .product(name: "DSSpacing", package: "ds-spacing"),
            ]
        ),
    ]
)
