// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "HekaSwiftUI",
  platforms: [.iOS(.v13)],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "HekaSwiftUI",
      targets: ["HekaSwiftUI"])
  ],
  dependencies: [
    .package(url: "https://github.com/HekaHealth/HekaCore.git", .upToNextMajor(from: "0.0.4"))
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "HekaSwiftUI",
      dependencies: ["HekaCore"],
      path: "Sources",
      resources: [
        .process("Resources")
      ]
    ),
    .testTarget(
      name: "HekaSwiftUITests",
      dependencies: ["HekaSwiftUI"]),
  ],
  swiftLanguageVersions: [.v5]
)
