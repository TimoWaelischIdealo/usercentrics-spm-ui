// swift-tools-version:5.6
import PackageDescription

// swift-tools-version 5.6+ derives package identity from the repository URL,
// not from the Package.swift name field. Removing the explicit `name:` parameter
// from .package() prevents the identity mismatch that caused SwiftPM to fail with
// "unexpectedly did not find the new dependency in the package graph" when customers
// added usercentrics-spm-ui via Xcode 13+.
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
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.26.2")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUIFramework",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.26.2.xcframework.zip",
            checksum: "3c06dd67dbe7ab615aafb89c8572e23bc92d9742f8a97f918f8b0f65a6260d8a"
        ),
        .target(
            name: "UsercentricsUI",
            dependencies: ["Usercentrics", "UsercentricsUIFramework"]
        ),
    ]
)
