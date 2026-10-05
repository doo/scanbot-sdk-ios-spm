// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ScanbotSDK",
    platforms: [
        .iOS("15.0"),
    ],
    products: [
        .library(
            name: "ScanbotSDK",
            targets: ["ScanbotSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ScanbotSDK",
            url: "https://download.scanbot.io/sdk/ios/pre/xcframeworks/Beta1/scanbot-ios-sdk-xcframework-10.0.1.zip",
            checksum: "272d066aac7fa88fd9d74d3c7b004340482cb22fa06cfd2e3d09de5026f877fa"
        ),
        .target(name: "AdditionalData",
                dependencies: ["ScanbotSDK"],
                resources: [
                    .process("ScanbotSDKOCRData.bundle"),
                ]
        )
    ]
)
