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
            url: https://download.scanbot.io/sdk/ios/pre/xcframeworks/beta1/scanbot-ios-sdk-xcframework-1.22.0.zip,
            checksum: "7b8dc96b40dca9697206549d5ee7d7f098467e7de67c97f24ff81b9d6964d29b"
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
