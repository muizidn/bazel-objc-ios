load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

objc_library(
    name = "SQLite3RequiredFrameworkLib",
    module_name = "SQLite3RequiredFramework",
    srcs = glob([
        "*.m",
    ]),
    hdrs = glob([
        "*.h",
    ]),
    sdk_dylibs = [
        "sqlite3"
    ],
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
        ":SQLite3RequiredFrameworkLib"
    ],
    frameworks = []
)