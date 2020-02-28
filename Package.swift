// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "RomanNumerals",
    products: [
        .library(name: "RomanNumerals", targets: ["RomanNumerals"]),
        .executable(name: "roman", targets: ["RomanNumeralsTool"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1"),
    ],
    targets: [
        .target(name: "RomanNumerals"),
        .testTarget(name: "RomanNumeralsTests", dependencies: ["RomanNumerals"]),
        .target(name: "RomanNumeralsTool", dependencies: [
            "RomanNumerals",
            "ArgumentParser"
        ])
    ]
)
