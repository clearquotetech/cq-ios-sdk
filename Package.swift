// swift-tools-version:6.3.3
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
            url: "https://github.com/clearquotetech/cq-ios-sdk/releases/download/v0.2.0-alpha.5/ClearQuoteSDK-swift6.3.3.xcframework.zip",
            checksum: "04e0315dc060169b815706bff16e37cad4d5186c8fec13eb3b2f595607013147"
        ),
        .target(
            name: "ClearQuoteSDKDeps",
            path: "Sources/ClearQuoteSDKDeps"
        )
    ]
)
