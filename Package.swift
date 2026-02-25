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
            url: "https://github.com/AnilFlytant/PopbrainAttributionSDK/releases/download/v1.1.0/PopbrainAttributionSDK.zip",
            checksum: "56b7d654bf8e2b05cab210555ca3f3f7f54cc9df230b4f129d708fecf524575f"
        )
    ]
)
