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
