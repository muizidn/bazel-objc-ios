load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "SwiftFrameworkLib",
    module_name = "SwiftFramework",
    srcs = glob([
        "*.swift"
    ]),
    visibility = ["//visibility:public"],
)

ios_framework(
    name = "SwiftFramework",
    bundle_id = "com.muiz.idn.SwiftFramework",
    families = [
        "iphone",
    ],
    minimum_os_version = "13.0",
    infoplists = [
        "Info.plist",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":SwiftFrameworkLib",
    ],
    frameworks = []
)