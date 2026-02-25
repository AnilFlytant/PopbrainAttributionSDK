// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PopbrainAttributionSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "PopbrainAttributionSDK", targets: ["PopbrainAttributionSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "PopbrainAttributionSDK",
            url: "https://github.com/AnilFlytant/PopbrainAttributionSDK/releases/download/v1.0.0/PopbrainAttributionSDK.zip",
            checksum: "e97a6efdbb3ce5b7fb622db1ac30b060c91c156a0ef777914556483771b8b5a7"
        )
    ]
)
