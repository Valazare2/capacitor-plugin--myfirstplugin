// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MyFirstPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "MyFirstPlugin",
            targets: ["MyFirstPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "MyFirstPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/MyFirstPluginPlugin"),
        .testTarget(
            name: "MyFirstPluginPluginTests",
            dependencies: ["MyFirstPluginPlugin"],
            path: "ios/Tests/MyFirstPluginPluginTests")
    ]
)