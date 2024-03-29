// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DragonUtilities",
    platforms: [.iOS(.v17), .macOS(.v14), .tvOS(.v17), .watchOS(.v10), .visionOS(.v1)],
    products: [
        .library(
            name: "DragonUtilities",
            targets: ["DragonUtilities"]
        ),
    ],
    targets: [
        .target(
            name: "DragonUtilities"
        ),
        .testTarget(
            name: "DragonUtilitiesTests",
            dependencies: ["DragonUtilities"]
        ),
    ]
)
