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
            url: "https://github.com/AnilFlytant/PopbrainAttributionSDK/releases/download/v1.1.4/PopbrainAttributionSDK.zip",
            checksum: "8f760f227599cc0fba0ee1b29a26ee03fe6dcba283941c219c7f9a7a9ea537f5"
        )
    ]
)
