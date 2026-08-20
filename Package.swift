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
        .package(url: "https://github.com/onevcat/Kingfisher.git", exact: "7.12.0"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", exact: "6.5.16"),
        .package(url: "https://github.com/AssistoLab/DropDown.git", revision: "2ab6f6ce19f0117d1a76ea043ef8f57722c65d16"),
        .package(url: "https://github.com/SVGKit/SVGKit.git", exact: "3.0.0"),
        .package(url: "https://github.com/krisk/fuse-swift.git", exact: "1.4.0"),
        .package(url: "https://github.com/Flight-School/AnyCodable.git", exact: "0.6.7"),
        .package(url: "https://github.com/kewlbear/TensorFlowLiteSwift.git", revision: "bb9bd9c7c86e882f17aaf8bac35e96c77264eee2"),
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", exact: "9.19.1"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", exact: "0.16.0"),
        .package(url: "https://github.com/ashleymills/Reachability.swift.git", exact: "5.2.4"),
        .package(url: "https://github.com/microsoft/clarity-apps.git", exact: "3.5.4"),
        .package(url: "https://github.com/teodorpatras/EasyTipView.git", exact: "2.1.0"),
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", exact: "0.9.20")
    ],
    targets: [
        .binaryTarget(
            name: "ClearQuoteSDK",
            url: "https://github.com/clearquotetech/cq-ios-sdk/releases/download/v0.1.6-beta.3/ClearQuoteSDK.xcframework.zip",
            checksum: "d85ad2265a92ad68c3afeca8cd837318b7c29b607ccb9860c269d4a6ddb3ae52"
        ),
        .target(
            name: "ClearQuoteSDKDeps",
            dependencies: [
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "DropDown", package: "DropDown"),
                .product(name: "SVGKit", package: "SVGKit"),
                .product(name: "Fuse", package: "fuse-swift"),
                .product(name: "AnyCodable", package: "AnyCodable"),
                .product(name: "TensorFlowLiteSwift", package: "TensorFlowLiteSwift"),
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "SQLite", package: "SQLite.swift"),
                .product(name: "Reachability", package: "Reachability.swift"),
                .product(name: "Clarity", package: "clarity-apps"),
                .product(name: "EasyTipView", package: "EasyTipView"),
                .product(name: "ZIPFoundation", package: "ZIPFoundation")
            ],
            path: "Sources/ClearQuoteSDKDeps"
        )
    ]
)
