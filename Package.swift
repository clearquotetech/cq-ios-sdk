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
            url: "https://github.com/clearquotetech/cq-ios-sdk/releases/download/v0.2.0-beta.5/ClearQuoteSDK.xcframework.zip",
            checksum: "1c377f62e3ddb031be8748812dc2b4183bfd1ac196110022fe20e98298ebffab"
        ),
        .target(
            name: "ClearQuoteSDKDeps",
            path: "Sources/ClearQuoteSDKDeps"
        )
    ]
)
