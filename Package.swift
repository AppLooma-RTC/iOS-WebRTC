// swift-tools-version:5.9
// WebRTC binary framework for the AppLooma RTC iOS SDK.
//
// This is a redistribution of open source work; see NOTICE for attribution.
// You do not depend on this package directly — depend on AppLoomaRTC.

import PackageDescription

let package = Package(
    name: "AppLoomaWebRTC",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
    ],
    products: [
        .library(
            name: "AppLoomaWebRTC",
            targets: ["LiveKitWebRTC"]
        ),
    ],
    dependencies: [],
    targets: [
        // The binary target name must match the module inside the .xcframework,
        // so it is not renamed. The product above is what other packages refer
        // to, and it is ours.
        .binaryTarget(
            name: "LiveKitWebRTC",
            url: "https://github.com/apploomadev/iOS-WebRTC/releases/download/150.7871.01/LiveKitWebRTC.xcframework.zip",
            checksum: "75ba3e7d596bc1ebe35c22472491a3dab8ddc7d22a0281ccaaeb92f2b53fc659"
        ),
    ]
)
