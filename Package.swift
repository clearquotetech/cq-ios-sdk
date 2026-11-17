// swift-tools-version:5.9
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
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "8.0.0"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", from: "8.0.0"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardToolbarManager.git", from: "1.1.6"),
        .package(url: "https://github.com/SVGKit/SVGKit.git", from: "3.0.0"),
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", from: "9.19.1"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.16.0"),
        .package(url: "https://github.com/google-ai-edge/LiteRT-Swift.git", from: "2.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "ClearQuoteSDK",
            url: "https://github.com/clearquotetech/cq-ios-sdk/releases/download/v0.2.0-alpha.2/ClearQuoteSDK.xcframework.zip",
            checksum: "5bc8a97c1d80429af586dd9a3297a1b9197519fbac629d2e4ed73cd70d13a097"
        ),
        .target(
            name: "ClearQuoteSDKDeps",
            dependencies: [
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "IQKeyboardToolbarManager", package: "IQKeyboardToolbarManager"),
                .product(name: "SVGKit", package: "SVGKit"),
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "SQLite", package: "SQLite.swift"),
                .product(name: "TensorFlowLite", package: "LiteRT-Swift")
            ],
            path: "Sources/ClearQuoteSDKDeps"
        )
    ]
)
