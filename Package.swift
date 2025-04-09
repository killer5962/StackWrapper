// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "StackWrapper",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "StackWrapper", targets: ["StackWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "StackWrapper",
            url: "https://github.com/Desp0o/StackWrapper/releases/download/v1.1.0/StackWrapper.xcframework.zip",
            checksum: "d9151368dd0d9a22b6172fbc14344f82b1b13ddb3467c79ce32e765119d9c484"
        )
    ]
)
