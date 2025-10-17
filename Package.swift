// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-uwp",
    products: [
        .library(name: "UWP", type: .dynamic, targets: ["UWP"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/thebrowsercompany/swift-cwinrt",
            branch: "eb46cdb66f770a1e006f9fcfebbf9e99a0fba811"
        ),
        .package(
            url: "https://github.com/thebrowsercompany/swift-windowsfoundation",
            branch: "4ad57d20553514bcb23724bdae9121569b19f172"
        ),
    ],
    targets: [
        .target(
            name: "UWP",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
            ]
        ),
    ]
)
