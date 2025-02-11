// swift-tools-version:5.8
import PackageDescription


//let swiftSettings: [SwiftSetting] = []
let swiftSettings: [SwiftSetting] = [.enableExperimentalFeature("StrictConcurrency")]

let package = Package(
	name: "RetryingOperation",
	platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
	products: [
		.library(name: "RetryingOperation", targets: ["RetryingOperation"]),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-log.git",          from: "1.2.0"),
		.package(url: "https://github.com/Frizlab/GlobalConfModule.git", from: "0.4.0"),
	],
	targets: [
		.target(name: "RetryingOperation", dependencies: [
			.product(name: "Logging",          package: "swift-log"),
			.product(name: "GlobalConfModule", package: "GlobalConfModule")
		], swiftSettings: swiftSettings),
		.testTarget(name: "RetryingOperationTests", dependencies: ["RetryingOperation"], swiftSettings: swiftSettings)
	]
)
