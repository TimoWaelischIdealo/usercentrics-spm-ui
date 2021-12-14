// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "UsercentricsUI",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "UsercentricsUI",
            targets: ["UsercentricsUI"]
        )
    ],
    dependencies: [
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.1.0")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUI",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.1.0.xcframework.zip",
            checksum: "9dc7a7c502a1842557210234953e413ad8566eeb6245d6556f98e2e8d00759c7"
        )
    ]
)
