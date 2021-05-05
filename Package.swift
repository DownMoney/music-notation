// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "music-notation",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v7)
    ],
    products: [
    	.library(name: "MusicNotation", targets: ["MusicNotation"])],
    targets: [
        .target(name: "MusicNotation", path: "Sources", exclude: ["docs"]),
        .testTarget(name: "MusicNotationTests", dependencies: ["MusicNotation"])
    ]
)
