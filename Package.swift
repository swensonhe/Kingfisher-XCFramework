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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.7.0/Kingfisher-7.7.0.zip",
            checksum: "88a54c707e4bc0fc393ef17351b12b3a923195d6a40243efac5e112b2a140cdf"
        )
    ]
)