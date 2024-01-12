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
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.10.2/Kingfisher-7.10.2.zip",
            checksum: "3e3766c031924559ab5710ae340cb725e88e2bd2cdcf7410ec2b51074341e8cb"
        )
    ]
)