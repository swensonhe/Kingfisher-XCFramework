// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Kingfisher",
    platforms: [.iOS(.v12), .macOS(.v10_14), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "Kingfisher", targets: ["Kingfisher"])
    ],
    targets: [
        .binaryTarget(
            name: "Kingfisher",
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.10.1/Kingfisher-7.10.1.zip",
            checksum: "6fc8b0b97631a0c56b2a2abc905aaa91168b03ab6e71befb6e5a1dcd2ca11c09"
        )
    ]
)