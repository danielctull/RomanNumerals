// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "RomanNumerals",
    products: [
        .library(name: "RomanNumerals", targets: ["RomanNumerals"])
    ],
    targets: [
        .target(name: "RomanNumerals"),
        .testTarget(name: "RomanNumeralsTests", dependencies: ["RomanNumerals"])
    ]
)
