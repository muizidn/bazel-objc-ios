load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load("@rules_apple_line//apple:objc_library.bzl", "objc_library")

objc_library(
    name = "NoModuleObjcFrameworkLib",
    module_name = "NoModuleObjcFramework",
    srcs = glob([
        "*.m",
    ]),
    hdrs = glob([
        "*.h",
    ]),
    visibility = ["//visibility:public"],
)

ios_framework(
    name = "NoModuleObjcFramework",
    hdrs = glob([
        "*.h",
    ]),
    bundle_id = "com.muiz.idn.NoModuleObjcFramework",
    families = [
        "iphone",
    ],
    minimum_os_version = "13.0",
    infoplists = [
        "Info.plist",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":NoModuleObjcFrameworkLib",
    ],
    frameworks = []
)