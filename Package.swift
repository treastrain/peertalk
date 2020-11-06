// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PeerTalk",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v8),
        .tvOS(.v9),
    ],
    products: [
        .library(
            name: "PeerTalk",
            targets: ["PeerTalk"]),
    ],
    targets: [
        .target(
            name: "PeerTalk",
            path: "peertalk",
            exclude: [
                "prefix.pch",
                "Info.plist",
            ],
            publicHeadersPath: "headers"),
        .testTarget(
            name: "PeerTalkTests",
            dependencies: ["PeerTalk"],
            path: "peertalk-tests",
            exclude: ["peertalkTests-Info.plist"]),
    ]
)
