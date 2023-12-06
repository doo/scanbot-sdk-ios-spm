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
            url: "https://download.scanbot.io/sdk/ios/pre/xcframeworks/RC1/scanbot-ios-sdk-xcframework-4.2.0.zip",
            checksum: "e210a20b0811508ad55a36e1526b699d0fcb080f0c449349f705f41ceac9dd6a"
        ),
        .target(name: "AdditionalData",
                dependencies: ["ScanbotSDK"],
                resources: [
                    .process("ScanbotSDKOCRData.bundle"),
                ]
        )
    ]
)
