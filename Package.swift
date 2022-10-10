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
            url: "https://download.scanbot.io/sdk/ios/pre/xcframeworks/RC4/scanbot-ios-sdk-xcframework-1.30.0.zip",
            checksum: "12e08e013aa41b86ad6d9346b0b188c69cfa91abc4f16db9066ac2dd48bb2369"
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
