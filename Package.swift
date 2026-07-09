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
            url: "https://github.com/AnilFlytant/PopbrainAttributionSDK/releases/download/v1.1.8/PopbrainAttributionSDK.zip",
            checksum: "c8fd120c1e8874a3509a8ccf3f5220d24b0107a34667550a4b0b92e3f4baaa77"
        )
    ]
)
