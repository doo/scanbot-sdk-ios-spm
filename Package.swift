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
            url: "https://download.scanbot.io/sdk/ios/pre/xcframeworks/RC4/scanbot-ios-sdk-xcframework-10.0.1.zip",
            checksum: "f4c12fbebf300f6a8406cad2a6a674cd4715397d96cbf23bcc62bbf33c334e1f"
        ),
        .target(name: "AdditionalData",
                dependencies: ["ScanbotSDK"],
                resources: [
                    .process("ScanbotSDKOCRData.bundle"),
                ]
        )
    ]
)
