import ProjectDescription

let project = Project(
    name: "AlertComponentConsumer",
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
            dependencies: []
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
