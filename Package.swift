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
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "1.12.7")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUI",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-1.12.7.xcframework.zip",
            checksum: "1195b53744c0c8a74464854629f37d58d5e890906ad5cae7b84fb3dfb31647c1"
        )
    ]
)
