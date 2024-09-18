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
        .package(name: "Usercentrics", url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.17.0")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUIFramework",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.17.0.xcframework.zip",
            checksum: "256fedc51f3e8ae4dae36b7475aafd0ea54a4caaeb1b8b1839223d3e351b336b"
        ),
        .target(
            name: "UsercentricsUI",
            dependencies: ["Usercentrics", "UsercentricsUIFramework"]
        ),
    ]
)
