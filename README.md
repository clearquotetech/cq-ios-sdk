# cq-ios-sdk

**cq-ios-sdk** is the ClearQuote iOS Software Development Kit. It ships the **ClearQuoteSDK** framework and provides the end-to-end vehicle inspection experience for host applications.

ClearQuoteSDK **0.1.6 and later** is distributed with **Swift Package Manager**. Requires **iOS 16+**.

## Install

In Xcode: **File → Add Package Dependencies…**

- URL: `https://github.com/clearquotetech/cq-ios-sdk.git`
- Dependency rule: **Up to Next Major** from `0.1.6`
- Product: **ClearQuoteSDK**

Or in your app’s `Package.swift`:

```swift
.package(
    url: "https://github.com/clearquotetech/cq-ios-sdk.git",
    from: "0.1.6"
)
```

Then add the `ClearQuoteSDK` product to your target.

The binary XCFramework is downloaded from the GitHub Release for tag `v0.1.6`. Runtime dependencies (Kingfisher, Sentry, TensorFlow Lite, and others) are pulled in automatically via the package.

For integration details, see the [integration guide](https://docs.google.com/document/d/1eqHUg3L7mqA4E8vqslzpLoqoC_8qxv7wTUn_JneKQmY/edit?usp=sharing) (may still mention CocoaPods until updated).

## Support

For bugs, [open a GitHub issue](https://github.com/clearquotetech/cq-ios-sdk/issues).

## License

MIT. See the [LICENSE](LICENSE) file for details.
