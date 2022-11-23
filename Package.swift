// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FFmpegKitWrapper",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FFmpegKitWrapper",
            targets: [
                "FFmpegKitWrapper",
                "ffmpegkit",
                "libavcodec",
                "libavdevice",
                "libavfilter",
                "libavformat",
                "libavutil",
                "libswresample",
                "libswscale"
            ]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FFmpegKitWrapper",
            dependencies: []),

            .binaryTarget(
                name: "ffmpegkit",
                url: "https://github.com/mliberatore/ffmpeg-kit/releases/download/5.1-test/ffmpegkit.xcframework.zip",
                checksum: "106ed7984ed4a7f66b2466b24d671bd99d77d28e15cccaffab5d72ca37d0dfef"
            ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/mliberatore/ffmpeg-kit/releases/download/5.1-test/libavcodec.xcframework.zip",
            checksum: "5f7c8f70d950a275a5649e0de410f7cc17cc76ee6ddab0e2bd10aea5f70ad9e3"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/mliberatore/ffmpeg-kit/releases/download/5.1-test/libavdevice.xcframework.zip",
            checksum: "6bcca1aff9650dc305d557ee459f31cd1c4899b50e78937ad63ff6dda686d650"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/mliberatore/ffmpeg-kit/releases/download/5.1-test/libavfilter.xcframework.zip",
            checksum: "89d1bf5a81c2caf404ede008e2ad07c7eaa014ad96d6e6c7964501483936be27"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/mliberatore/ffmpeg-kit/releases/download/5.1-test/libavformat.xcframework.zip",
            checksum: "370a9151048d9e9a7c91f71f5e601b90304eea27046dce265815572130a20290"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/mliberatore/ffmpeg-kit/releases/download/5.1-test/libavutil.xcframework.zip",
            checksum: "2d5bbad5c7a3ee317cd6a2642c0c1d67930dcab557382139a2ed72e639ed4301"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/mliberatore/ffmpeg-kit/releases/download/5.1-test/libswresample.xcframework.zip",
            checksum: "4da6c364278009fa9ca36434c9085f12230fcbc276852c53c7e23b174985f6e3"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/mliberatore/ffmpeg-kit/releases/download/5.1-test/libswscale.xcframework.zip",
            checksum: "b4a47e1bd516cbffb1746cfbe7c4117d2dcc07b8f3c8f3266eef8659e6bf7154"
        ),
    ]
)
