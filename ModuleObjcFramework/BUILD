load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load("@rules_apple_line//apple:objc_library.bzl", "objc_library")

objc_library(
    name = "ModuleObjcFrameworkLib",
    module_name = "ModuleObjcFramework",
    srcs = glob([
        "*.m",
    ]),
    hdrs = glob([
        "*.h",
    ]),
    visibility = ["//visibility:public"],
)

ios_framework(
    name = "ModuleObjcFramework",
    bundle_id = "com.muiz.idn.ModuleObjcFramework",
    families = [
        "iphone",
    ],
    minimum_os_version = "13.0",
    infoplists = [
        "Info.plist",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":ModuleObjcFrameworkLib",
    ],
    frameworks = []
)