// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Notifications",
  platforms: [
    .iOS(.v16),
  ],
  products: [
    .library(
      name: "Notifications",
      targets: ["Notifications"]),
  ],
  dependencies: [
    .package(name: "Network", path: "../Network"),
    .package(name: "Models", path: "../Models"),
    .package(name: "Routeur", path: "../Routeur"),
    .package(name: "Status", path: "../Status"),
    .package(url: "https://github.com/markiv/SwiftUI-Shimmer", exact: "1.1.0")
  ],
  targets: [
    .target(
      name: "Notifications",
      dependencies: [
        .product(name: "Network", package: "Network"),
        .product(name: "Models", package: "Models"),
        .product(name: "Routeur", package: "Routeur"),
        .product(name: "Status", package: "Status"),
        .product(name: "Shimmer", package: "SwiftUI-Shimmer")
      ]),
  ]
)

