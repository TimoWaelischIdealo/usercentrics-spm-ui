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
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.5.0")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUI",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.5.0.xcframework.zip",
            checksum: "ce6b4aacb1efa65b709ab3499d8cef6250fdabc40012dabe0bafce4f15425ee5"
        )
    ]
)
