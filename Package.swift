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
            url: "https://download.scanbot.io/sdk/ios/pre/xcframeworks/Beta2/scanbot-ios-sdk-xcframework-11.0.0.zip",
            checksum: "01c04092e30f8a191d77172e582771ba73ae869acccf1c9b293ff982f7f98219"
        ),
        .target(name: "AdditionalData",
                dependencies: ["ScanbotSDK"],
                resources: [
                    .process("ScanbotSDKOCRData.bundle"),
                ]
        )
    ]
)
