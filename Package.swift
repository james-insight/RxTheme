import PackageDescription

let package = Package(
    name: "RxTheme",
    platforms: [
        .iOS(.v8), .tvOS(.v9), .macOS(.v10_11), .watchOS(.v3)
    ],
    products: [
        .library(name: "RxTheme", targets: ["RxTheme"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(name: "RxTheme", dependencies: ["RxSwift", "RxCocoa"], path: "Source"),
    ],
    swiftLanguageVersions: [.v5]
)