# cq-ios-sdk

**cq-ios-sdk** is the ClearQuote iOS Software Development Kit. It ships the **ClearQuoteSDK** framework and provides the end-to-end vehicle inspection experience for host applications.

> **SPM test branch:** This branch (`SD/SCRUM-765-swift-package-manager`) distributes ClearQuoteSDK via **Swift Package Manager** only. Production `main` still uses CocoaPods until this path is promoted.

## Install (SPM — test)

In Xcode: **File → Add Package Dependencies…**

- URL: `https://github.com/clearquotetech/cq-ios-sdk.git`
- Dependency rule: **Branch** `SD/SCRUM-765-swift-package-manager`
- Product: **ClearQuoteSDK**

Or in your app’s `Package.swift`:

```swift
.package(
    url: "https://github.com/clearquotetech/cq-ios-sdk.git",
    branch: "SD/SCRUM-765-swift-package-manager"
)
```

Then add the `ClearQuoteSDK` product to your target.

The binary XCFramework is downloaded from the GitHub Release asset for tag `spm-test-0.1.6`. Runtime dependencies (Kingfisher, Sentry, TensorFlow Lite, etc.) are pulled in automatically via the package.

For integration details, see the [integration guide](https://docs.google.com/document/d/1eqHUg3L7mqA4E8vqslzpLoqoC_8qxv7wTUn_JneKQmY/edit?usp=sharing) (may still mention CocoaPods until updated).

## Support

For bugs, [open a GitHub issue](https://github.com/clearquotetech/cq-ios-sdk/issues).

## License

MIT. See the [LICENSE](LICENSE) file for details.
