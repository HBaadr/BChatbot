//
//  Package.swift
//  BChatbot
//
//  Created by badr_hourimeche on 6/3/2025.
//

import PackageDescription

let package = Package(
    name: "BChatbot",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "BChatbot",
            targets: ["BChatbot"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BChatbot",
            path: "./Build/BChatbot.xcframework"
        ),
    ]
)
