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
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.9.0")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUI",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.9.0.xcframework.zip",
            checksum: "a7df7f50814d8cce7d253718fe67d6af76af79ef66a3f09d654257f768e6854f"
        )
    ]
)
