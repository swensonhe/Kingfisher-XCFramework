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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.8.0/Kingfisher-7.8.0.zip",
            checksum: "1d6f554aced46b03da24644ac712bcc66fad052c233b34b9dcbc4c0e0cf2c5f2"
        )
    ]
)