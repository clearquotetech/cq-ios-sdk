Pod::Spec.new do |s|
  s.name         = "ClearQuoteSDK"
  s.version      = "0.1.4"
  s.summary      = "ClearQuote iOS SDK"
  s.description  = "ClearQuote iOS SDK distributed as a prebuilt XCFramework."
  s.homepage     = "https://github.com/clearquotetech/cq-ios-sdk"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Abhishek Sheth" => "abhisheksheth@clearquote.io" }

  s.source = {
    :git => "https://github.com/clearquotetech/cq-ios-sdk.git",
    :branch => "RN-SUPPORT"
  }

  s.vendored_frameworks = "ClearQuoteSDK.xcframework"

  # 🚫 REMOVE THIS
  # s.static_framework = true

  s.platform = :ios, "16.0"
  s.swift_version = "5.0"
  s.requires_arc = true
  s.dependency 'Kingfisher', '7.12.0'
  s.dependency 'DropDown'
  s.dependency 'SVGKit'
  s.dependency 'IQKeyboardManagerSwift', '6.3.0'
  s.dependency 'Fuse'
  s.dependency 'AnyCodable-FlightSchool'
  s.dependency 'TensorFlowLiteSwift', '2.3.0'
  s.dependency 'Sentry', '8.38.0'
  s.dependency 'SQLite.swift'
  s.dependency 'ReachabilitySwift'
end