// swift-tools-version: 5.4
//
//  Package.swift
//  IceCreamSandwich
//

import PackageDescription

let package = Package(
    name: "IceCreamSandwich",
    products: [
        .library(name: "IceCreamSandwich", targets: ["IceCreamSandwich"]),
    ],
    targets: [
        .target(name: "IceCreamSandwich"),
        .testTarget(name: "IceCreamSandwichTests", dependencies: ["IceCreamSandwich"]),
    ]
)
