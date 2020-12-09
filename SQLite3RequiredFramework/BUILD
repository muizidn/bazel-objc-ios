load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "SQLite3RequiredFrameworkLib_swift",
    srcs = [
        "Foo.swift"
    ],
    linkopts = [
        "-lsqlite3",
    ],
    deps = [],
)

objc_library(
    name = "SQLite3RequiredFrameworkLib",
    module_name = "SQLite3RequiredFramework",
    srcs = glob([
        "*.m",
    ]),
    hdrs = glob([
        "*.h",
    ]),
    visibility = ["//visibility:public"],
)

ios_framework(
    name = "SQLite3RequiredFramework",
    hdrs = glob([
        "*.h",
    ]),
    bundle_id = "com.muiz.idn.SQLite3RequiredFramework",
    families = [
        "iphone",
    ],
    minimum_os_version = "13.0",
    infoplists = [
        "Info.plist",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":SQLite3RequiredFrameworkLib_swift",
        ":SQLite3RequiredFrameworkLib"
    ],
    frameworks = []
)