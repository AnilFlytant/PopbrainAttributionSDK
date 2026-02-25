//
//  Package.swift
//  PopbrainAttributionSDK
//
//  Created by Aura on 25/02/26.
//

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PopbrainAttributionSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "PopbrainAttributionSDK",
            targets: ["PopbrainAttributionSDK"]),
    ],
    targets: [
        .target(
            name: "PopbrainAttributionSDK",
            path: "PopbrainAttributionSDK.xcframework" // This must match the folder name where your .swift files are
        )
    ]
)
