// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ScanbotSDK",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "ScanbotSDK",
            targets: ["ScanbotSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ScanbotSDK",
            url: "https://download.scanbot.io/sdk/ios/xcframeworks/scanbot-ios-sdk-xcframework-1.18.0.zip",
            checksum: "185b3ac1b0ebaa05adccab3b5d2f010a60e15c7871e0dc7bb2c2d3b7c802b991"
        ),
    ]
)
