import ProjectDescription

let project = Project(
    name: "AlertComponentConsumer",
    packages: [
        .package(url: "https://github.com/JaCaLla/AlertComponent.git", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "AlertComponentConsumer",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.AlertComponentConsumer",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["AlertComponentConsumer/Sources/**"],
            resources: ["AlertComponentConsumer/Resources/**"],
            dependencies: [
                .package(product: "AlertComponent")
            ]
        ),
        .target(
            name: "AlertComponentConsumerTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AlertComponentConsumerTests",
            infoPlist: .default,
            sources: ["AlertComponentConsumer/Tests/**"],
            resources: [],
            dependencies: [.target(name: "AlertComponentConsumer")]
        ),
    ]
)
