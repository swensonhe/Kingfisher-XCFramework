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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.10.0/Kingfisher-7.10.0.zip",
            checksum: "877f471f1f8cd392cbef566875e7907e44d9dacc69aac517f9647e98452d0063"
        )
    ]
)