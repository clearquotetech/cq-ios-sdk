Pod::Spec.new do |s|
    s.name         = "ClearQuoteSDK"
    s.version      = "0.0.1"
    s.summary      = "ClearQuoteSDK: ClearQuoteSDK"
    s.description  = "A more detailed description of ClearQuoteSDK"
    s.homepage     = "https://github.com/clearquotetech/cq-ios-sdk.git"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "Abhishek Sheth" => "abhisheksheth@clearquote.io" }
    s.source       = { :git => "https://github.com/clearquotetech/cq-ios-sdk.git", :branch => "main" }
    s.vendored_frameworks = "ClearQuoteSDK.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '14.0'

    s.dependency 'Kingfisher'
  s.dependency 'DropDown'
  s.dependency 'SVGKit'
  s.dependency 'IQKeyboardManagerSwift', '6.3.0'
  s.dependency 'Fuse'
  s.dependency 'AnyCodable-FlightSchool'
  s.dependency 'TensorFlowLiteTaskVision'
end