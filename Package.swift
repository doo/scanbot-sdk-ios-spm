// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ScanbotSDK",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "ScanbotSDK",
            targets: ["ScanbotSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ScanbotSDK",
            url: "https://download.scanbot.io/sdk/ios/pre/xcframeworks/Beta6/scanbot-ios-sdk-xcframework-5.0.0.zip",
            checksum: "c7bb6e5b3c09812cbf0e0a142aecfb307990e8bf69c1ec12648d7074ed0a1cc4"
        ),
        .target(name: "AdditionalData",
                dependencies: ["ScanbotSDK"],
                resources: [
                    .process("ScanbotSDKOCRData.bundle"),
                ]
        )
    ]
)
