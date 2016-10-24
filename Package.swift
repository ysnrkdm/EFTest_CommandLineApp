import PackageDescription

let package = Package(
    name: "EFTest_CommandLineApp",
    dependencies: [
        .Package(url: "https://github.com/ysnrkdm/EFTest_RandomGenerator.git", majorVersion: 1, minor: 2)
    ]
)
