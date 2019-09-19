// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OhNo",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "OhNo",
            targets: ["OhNo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "4.4.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "OhNo",
            dependencies: ["GRDB"]),
        .testTarget(
            name: "OhNoTests",
            dependencies: ["OhNo"]),
    ]
)
