// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ZKProgressHUD",
    products: [
        .library(name: "ZKProgressHUD", targets: ["ZKProgressHUD"])
    ],
    targets: [
        .target(
            name: "ZKProgressHUD",
            dependencies: [],
            path: "ZKProgressHUD",
            resources: [
                .process("ZKProgressHUD.bundle")
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
