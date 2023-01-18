load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//java/private:zip_repository.bzl", "zip_repository")

def contrib_rules_jvm_deps():
    maybe(
        http_archive,
        name = "apple_rules_lint",
        sha256 = "def262ad7473d54f75f07c0ab96e1989b8793664605ff9d99238668bb08eaff6",
        strip_prefix = "apple_rules_lint-0.3.2",
        url = "https://github.com/apple/apple_rules_lint/archive/0.3.2.zip",
    )
    maybe(
        http_archive,
        name = "io_bazel_stardoc",
        sha256 = "3fd8fec4ddec3c670bd810904e2e33170bedfe12f90adf943508184be458c8bb",
        url = "https://github.com/bazelbuild/stardoc/releases/download/0.5.3/stardoc-0.5.3.tar.gz",
    )

    maybe(
        http_archive,
        name = "bazel_skylib",
        sha256 = "3b620033ca48fcd6f5ef2ac85e0f6ec5639605fa2f627968490e52fc91a9932f",
        strip_prefix = "bazel-skylib-1.3.0",
        url = "https://github.com/bazelbuild/bazel-skylib/archive/1.3.0.tar.gz",
    )

    maybe(
        http_archive,
        name = "com_google_protobuf",
        sha256 = "930c2c3b5ecc6c9c12615cf5ad93f1cd6e12d0aba862b572e076259970ac3a53",
        strip_prefix = "protobuf-3.21.12",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.21.12.tar.gz"],
    )

    maybe(
        zip_repository,
        name = "contrib_rules_jvm_deps",
        path = "@contrib_rules_jvm//java/private:contrib_rules_jvm_deps.zip",
    )

    maybe(
        http_archive,
        name = "io_grpc_grpc_java",
        sha256 = "1b7d8fa9cf549234e68c79a593fe840bb7c7d9bea05b6ad486b90f8e7599b8aa",
        strip_prefix = "grpc-java-1.49.2",
        urls = ["https://github.com/grpc/grpc-java/archive/v1.49.2.tar.gz"],
    )

    maybe(
        http_archive,
        name = "rules_jvm_external",
        sha256 = "455674f822a3eadb76366aae33b5e455eac1cd795232c1f39e82f9f1cacd394a",
        strip_prefix = "rules_jvm_external-0b272fde8a3e3db02767aaf6e7ec1ce35ef13ad1",
        url = "https://github.com/bazelbuild/rules_jvm_external/archive/0b272fde8a3e3db02767aaf6e7ec1ce35ef13ad1.zip",
    )

def contrib_rules_jvm_gazelle_deps():
    maybe(
        http_archive,
        name = "bazel_gazelle",
        sha256 = "ecba0f04f96b4960a5b250c8e8eeec42281035970aa8852dda73098274d14a1d",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.29.0/bazel-gazelle-v0.29.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.29.0/bazel-gazelle-v0.29.0.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "com_github_bazelbuild_buildtools",
        sha256 = "e3bb0dc8b0274ea1aca75f1f8c0c835adbe589708ea89bf698069d0790701ea3",
        strip_prefix = "buildtools-5.1.0",
        url = "https://github.com/bazelbuild/buildtools/archive/5.1.0.tar.gz",
    )

    maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "56d8c5a5c91e1af73eca71a6fab2ced959b67c86d12ba37feedb0a2dfea441a6",
        urls = [
            "https://github.com/bazelbuild/rules_go/releases/download/v0.37.0/rules_go-v0.37.0.zip",
        ],
    )

    maybe(
        http_archive,
        name = "io_grpc_grpc_java",
        sha256 = "88b12b2b4e0beb849eddde98d5373f2f932513229dbf9ec86cc8e4912fc75e79",
        strip_prefix = "grpc-java-1.48.1",
        urls = ["https://github.com/grpc/grpc-java/archive/v1.48.1.tar.gz"],
    )

    maybe(
        http_archive,
        name = "rules_proto",
        sha256 = "e017528fd1c91c5a33f15493e3a398181a9e821a804eb7ff5acdd1d2d6c2b18d",
        strip_prefix = "rules_proto-4.0.0-3.20.0",
        urls = [
            "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0-3.20.0.tar.gz",
        ],
    )
