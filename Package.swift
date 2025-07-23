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
        .package(name: "Usercentrics", url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.21.1")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUIFramework",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.21.1.xcframework.zip",
            checksum: "04041bce7df2eb0129018d4787cec1d42e3a5f18dc50879ad7858ad9115b14f3"
        ),
        .target(
            name: "UsercentricsUI",
            dependencies: ["Usercentrics", "UsercentricsUIFramework"]
        ),
    ]
)
