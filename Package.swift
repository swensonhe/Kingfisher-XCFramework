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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.4.1/Kingfisher-7.4.1.zip",
            checksum: "3514d14f00074ed4b8b597a74f03b2a0784e85a80576ed03dd690b8f50b402bb"
        )
    ]
)