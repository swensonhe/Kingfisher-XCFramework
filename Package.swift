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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.3.2/Kingfisher-7.3.2.zip",
            checksum: "3abc9666b2cf321cc5b652f5c2376c62a486ce975b2663bf35b93cb4dd2061cd"
        )
    ]
)
