load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

filegroup(
    name = "AppIcon",
    srcs = glob(["Assets.xcassets/AppIcon.appiconset/**"]),
    visibility = ["//visibility:public"],
)

objc_library(
    name = "FooLib",
    srcs = glob([
        "*.h",
        "*.m"
    ]),
    data = glob([
        "**/*.storyboard",
        "**/*.xib",
        "**/*.xcassets/**",
        "**/*.lproj/**"
    ])
)

filegroup(
    name = "Assets",
    srcs = glob([
        "Assets.xcassets/**/*",
    ],
    exclude = [
        "Assets.xcassets/*.appiconset/**",
    ]),
    visibility = ["//visibility:public"],
)

ios_application(
    name = "FooBzl",
    bundle_id = "com.muiz.idn.Foo",
    families = [
        "iphone",
        "ipad",
    ],
    app_icons = [":AppIcon"],
    resources = [":Assets"],
    minimum_os_version = "13.0",
    infoplists = [
        "Info.plist"
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":FooLib",
    ],
    frameworks = [
    ]
)
