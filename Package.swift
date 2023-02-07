// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "UsercentricsUI",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11)
    ],
    products: [
        .library(
            name: "UsercentricsUI",
            targets: ["UsercentricsUI"]
        )
    ],
    dependencies: [
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.7.12")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUI",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.7.12.xcframework.zip",
            checksum: "0930d2711a525514cf48ecc855b98209d860f20cda1b35e21f7d4578c773cae1"
        )
    ]
)
