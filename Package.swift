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
        .package(name: "Usercentrics", url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.24.4")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUIFramework",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.24.4.xcframework.zip",
            checksum: "dbd1faa30b3add384972132877ec49c5a86ccbee110b4df2131e8398abaf80b9"
        ),
        .target(
            name: "UsercentricsUI",
            dependencies: ["Usercentrics", "UsercentricsUIFramework"]
        ),
    ]
)
