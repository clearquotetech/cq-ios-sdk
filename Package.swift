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
        .package(url: "https://github.com/kewlbear/TensorFlowLiteSwift.git", revision: "bb9bd9c7c86e882f17aaf8bac35e96c77264eee2"),
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", from: "9.19.1"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.16.0"),
        .package(url: "https://github.com/microsoft/clarity-apps.git", exact: "3.5.4"),
    ],
    targets: [
        .binaryTarget(
            name: "ClearQuoteSDK",
            url: "https://github.com/clearquotetech/cq-ios-sdk/releases/download/v0.2.0-alpha.1/ClearQuoteSDK.xcframework.zip",
            checksum: "697bc57e1f2d3af3a033c59a8b73eb058cb4ecf4df31eb44649aab4cbd28d4e5"
        ),
        .target(
            name: "ClearQuoteSDKDeps",
            dependencies: [
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "IQKeyboardToolbarManager", package: "IQKeyboardToolbarManager"),
                .product(name: "SVGKit", package: "SVGKit"),
                .product(name: "TensorFlowLiteSwift", package: "TensorFlowLiteSwift"),
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "SQLite", package: "SQLite.swift"),
                .product(name: "Clarity", package: "clarity-apps")
            ],
            path: "Sources/ClearQuoteSDKDeps"
        )
    ]
)
