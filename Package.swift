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
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "0.10.0")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUIFramework",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-0.10.0.xcframework.zip",
            checksum: "b895a80bfa69aa497c9f29af021e2ef67a1c0dd126fa1307e104a6b1e7296bd3"
        ),
        .target(
            name: "UsercentricsUI",
            dependencies: [
                .target(name: "UsercentricsUIFramework"),
            ],
            resources: [.copy("UsercentricsUIResources.bundle")]
        ),
    ]
)
