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
        .package(url: "https://github.com/oscbyspro/Numberick", revision: "a2fdb8105e6f8f1167c98ad7470a80b70d694b82"),
    ],
    targets: [
        .target(
        name: "PullRequest"),
        
        .testTarget(
        name: "PullRequestTests",
        dependencies: ["PullRequest", "Numberick"]),
    ]
)
