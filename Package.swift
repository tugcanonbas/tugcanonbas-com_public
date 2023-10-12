// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "tugcanonbas-com_public",
    platforms: [
        .macOS(.v13),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "4.76.0"),
        // Plot is a tool for generating static websites using Swift and the power of Swift's type system.
        .package(url: "https://github.com/JohnSundell/Plot.git", from: "0.10.0"),
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Plot", package: "Plot"),
            ]
        ),
    ]
)
