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
            url: "https://download.scanbot.io/sdk/ios/pre/xcframeworks/RC6/scanbot-ios-sdk-xcframework-2.1.0.zip",
            checksum: "fc14bd24344f6b2b8b62f2aea51b83507f6675baf1edbfa0f93fb8ceedf97fcf"
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
