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
            checksum: "36cca9c121172ca5a07bc8f408bf3cdff6d994d2a6bd40ab6e294e98e9dc081e"
        )
    ]
)
