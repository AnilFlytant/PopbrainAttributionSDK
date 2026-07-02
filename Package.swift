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
            url: "https://github.com/AnilFlytant/PopbrainAttributionSDK/releases/download/v1.1.2/PopbrainAttributionSDK.zip",
            checksum: "4856a1b0b8d5c492be13ea92f8bf7b38fbfd22e1cf68df60a68e3d9babd1f5af"
        )
    ]
)
