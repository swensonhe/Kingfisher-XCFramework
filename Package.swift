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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.6.2/Kingfisher-7.6.2.zip",
            checksum: "76a47eb79a6fb3387276a786d3f949db1e98d493d9fb8fa0eb5d5cec5d57ccda"
        )
    ]
)