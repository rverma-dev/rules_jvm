load("@rules_java//java:defs.bzl", "java_binary", "java_library")

java_library(
    name = "myproject",
    srcs = ["App.java"],
    visibility = ["//:__subpackages__"],
)

java_binary(
    name = "App",
    main_class = "com.example.myproject.App",
    visibility = ["//visibility:public"],
    runtime_deps = [":myproject"],
)
