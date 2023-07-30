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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.9.0/Kingfisher-7.9.0.zip",
            checksum: "8ec24959e1244a6fd27f4422489758c0299a1aa1d38de70712b7bff5f0f545ab"
        )
    ]
)