// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "FirstWebApp",
    products: [
        .library(name: "FirstWebApp", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"),
        
        // HTTP package
        .package(url: "https://github.com/vapor/http.git", from: "3.0.0"),
        
        // Leaf package
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0")
    ],
    
    targets: [
        .target(name: "App", dependencies: ["FluentSQLite", "Vapor", "HTTP", "Leaf"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

