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
            url: "https://download.scanbot.io/sdk/ios/xcframeworks/scanbot-ios-sdk-xcframework-1.21.0.zip",
            checksum: "d8dabe3887b967fdfe61f11e37d8f1012849bde4ca35cea2b906c6d384fd3de8"
        ),
        .target(name: "AdditionalData",
                dependencies: ["ScanbotSDK"],
                resources: [
                    .process("ScanbotSDKMRZData.bundle"),
                    .process("ScanbotSDKOCRData.bundle"),
                ]
        )
    ]
)
