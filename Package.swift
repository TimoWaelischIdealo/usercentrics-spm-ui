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
        .package(name: "Usercentrics", url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.23.2")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUIFramework",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.23.2.xcframework.zip",
            checksum: "25974f7a5b798b93ee3deaf72e5005070ae15825ec7ebb0cf2254f83adf8e8eb"
        ),
        .target(
            name: "UsercentricsUI",
            dependencies: ["Usercentrics", "UsercentricsUIFramework"]
        ),
    ]
)
