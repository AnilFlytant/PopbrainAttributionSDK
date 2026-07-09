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
            url: "https://github.com/AnilFlytant/PopbrainAttributionSDK/releases/download/v1.1.7/PopbrainAttributionSDK.zip",
            checksum: "8c0d194eb195552464dc341d3fef3b8e150ee3f8cdaf697eb5cd661cef9e9d3a"
        )
    ]
)
