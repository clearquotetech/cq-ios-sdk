// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "ClearQuoteSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "ClearQuoteSDK",
            targets: ["ClearQuoteSDK", "ClearQuoteSDKDeps"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ClearQuoteSDK",
            url: "https://github.com/clearquotetech/cq-ios-sdk/releases/download/v0.2.0-beta.6/ClearQuoteSDK.xcframework.zip",
            checksum: "14a465a1b63954f39cf369f356366aa30200eb6d485973f082aa323c979cbd17"
        ),
        .target(
            name: "ClearQuoteSDKDeps",
            path: "Sources/ClearQuoteSDKDeps"
        )
    ]
)
