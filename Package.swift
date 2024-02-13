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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.11.0/Kingfisher-7.11.0.zip",
            checksum: "ec88b37064cc5db1250b08b74bee2dd9fa125f4fb83e2b3635f8b4aa587dbd5f"
        )
    ]
)