// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlowsPackage",
    products: [
        .library(
            name: "FlowsPackage",
            targets: ["FlowsPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JavierCS/DependenciesPackage", branch: "main")
    ],
    targets: [
        .target(
            name: "FlowsPackage",
            dependencies: [
                .product(name: "DependenciesPackage", package: "DependenciesPackage"),
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "FlowsPackageTests",
            dependencies: ["FlowsPackage"]),
    ]
)
