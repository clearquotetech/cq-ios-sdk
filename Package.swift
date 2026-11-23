// swift-tools-version:6.4
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
            url: "https://github.com/clearquotetech/cq-ios-sdk/releases/download/v0.2.0-alpha.6/ClearQuoteSDK.xcframework.zip",
            checksum: "09e0a2d22b000780381618e5a539b32bfac6af742a038fcd96f725a4e5ed9d98"
        ),
        .target(
            name: "ClearQuoteSDKDeps",
            path: "Sources/ClearQuoteSDKDeps"
        )
    ]
)
