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
            url: "https://download.scanbot.io/sdk/ios/pre/xcframeworks/RC3/scanbot-ios-sdk-xcframework-1.31.0.zip",
            checksum: "b5dd8ebb06b8cdb68db1e661dcbb7b9385b6bfeed04932aea65549b920fa99e6"
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
