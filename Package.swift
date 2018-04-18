// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CGtk",
    products: [
        .library(name: "CGtk", targets: ["CGtk"]),
    ],
    targets: [
        .target(name: "CGtk"),
    ]
)
