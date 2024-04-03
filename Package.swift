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
        .package(name: "Usercentrics", url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.14.0")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUIFramework",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.14.0.xcframework.zip",
            checksum: "4e8ec6f51f076567f74a12e8c6905226cd91aeb9ac8f32e94be313c2e722c475"
        ),
        .target(
            name: "UsercentricsUI",
            dependencies: ["Usercentrics", "UsercentricsUIFramework"]
        ),
    ]
)
