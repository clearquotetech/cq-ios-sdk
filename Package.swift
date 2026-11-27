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
            url: "https://github.com/clearquotetech/cq-ios-sdk/releases/download/v0.2.1-beta.1/ClearQuoteSDK.xcframework.zip",
            checksum: "2097fce7809432cb6ca96ea3e5ed7a03a3cdbc57bb41d99faaa74c3048330d96"
        ),
        .target(
            name: "ClearQuoteSDKDeps",
            path: "Sources/ClearQuoteSDKDeps"
        )
    ]
)
