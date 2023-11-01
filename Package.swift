// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "my-swift-foundation-pull-request",
    platforms: [
        .iOS(.v14),
        .macCatalyst(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7),
    ],
    products: [
        .library(
        name: "PullRequest",
        targets: ["PullRequest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/oscbyspro/Numberick", exact: "0.15.0"),
    ],
    targets: [
        .target(
        name: "PullRequest"),
        
        .testTarget(
        name: "PullRequestTests",
        dependencies: ["PullRequest", "Numberick"]),
    ]
)
