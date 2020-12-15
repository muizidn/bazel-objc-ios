load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    tag = "0.20.0",
)

git_repository(
    name = "rules_apple_line",
    remote = "https://github.com/line/rules_apple_line.git",
    commit = "b5bdbc0fd320905ec3fc7d7a2a0b80987a877cd0",
)


load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

load(
    "@rules_apple_line//apple:repositories.bzl",
    "rules_apple_line_dependencies",
)

# If you want to lock apple_support, rules_apple and rules_swift to specific
# versions, be sure to call this function after their repository rules.
rules_apple_line_dependencies()

load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

protobuf_deps()
