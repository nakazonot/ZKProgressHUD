// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ZKProgressHUD",
    products: [
        .library(name: "ZKProgressHUD", targets: ["ZKProgressHUD"])
    ],
    targets: [
        .target(name: "ZKProgressHUD", dependencies: [], path: "ZKProgressHUD")
    ],
    swiftLanguageVersions: [.v5]
)
