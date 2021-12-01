# rules_jvm_contrib

Handy rules for working with JVM-based projects in Bazel.

In order to use these in your own projects, in your `WORKSPACE` once
you've used an `http_archive`, you can load all the necessary 
dependencies by:

```starlark
load("@rules_jvm_contrib//:repositories.bzl", "rules_jvm_contrib_deps")

rules_jvm_contrib_deps()

load("@rules_jvm_contrib//:setup.bzl", "rules_jvm_contrib_setup")

rules_jvm_contrib_setup()
```

## Java Rules

<!-- Generated with Stardoc: http://skydoc.bazel.build -->



<a id="#checkstyle_config"></a>

## checkstyle_config

<pre>
checkstyle_config(<a href="#checkstyle_config-name">name</a>, <a href="#checkstyle_config-config_file">config_file</a>, <a href="#checkstyle_config-output_format">output_format</a>)
</pre>

 Rule allowing checkstyle to be configured. This is typically
     used with the linting rules from `@apple_rules_lint` to configure how
     checkstyle should run. 

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="checkstyle_config-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="checkstyle_config-config_file"></a>config_file |  The config file to use for all checkstyle tests   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | required |  |
| <a id="checkstyle_config-output_format"></a>output_format |  Output format to use. Defaults to plain   | String | optional | "plain" |


<a id="#checkstyle_test"></a>

## checkstyle_test

<pre>
checkstyle_test(<a href="#checkstyle_test-name">name</a>, <a href="#checkstyle_test-config">config</a>, <a href="#checkstyle_test-configuration_file">configuration_file</a>, <a href="#checkstyle_test-output_format">output_format</a>, <a href="#checkstyle_test-srcs">srcs</a>)
</pre>



**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="checkstyle_test-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="checkstyle_test-config"></a>config |  -   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | optional | None |
| <a id="checkstyle_test-configuration_file"></a>configuration_file |  Configuration file. If not specified a default file is used   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | optional | None |
| <a id="checkstyle_test-output_format"></a>output_format |  Output Format can be plain or xml. Defaults to plain   | String | optional | "plain" |
| <a id="checkstyle_test-srcs"></a>srcs |  -   | <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a> | required |  |


<a id="#java_binary"></a>

## java_binary

<pre>
java_binary(<a href="#java_binary-name">name</a>, <a href="#java_binary-kwargs">kwargs</a>)
</pre>

Adds linting tests to Bazel's own `java_binary`

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="java_binary-name"></a>name |  <p align="center"> - </p>   |  none |
| <a id="java_binary-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


<a id="#java_export"></a>

## java_export

<pre>
java_export(<a href="#java_export-name">name</a>, <a href="#java_export-maven_coordinates">maven_coordinates</a>, <a href="#java_export-pom_template">pom_template</a>, <a href="#java_export-deploy_env">deploy_env</a>, <a href="#java_export-visibility">visibility</a>, <a href="#java_export-kwargs">kwargs</a>)
</pre>

Adds linting tests to `rules_jvm_external`'s `java_export`

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="java_export-name"></a>name |  <p align="center"> - </p>   |  none |
| <a id="java_export-maven_coordinates"></a>maven_coordinates |  <p align="center"> - </p>   |  none |
| <a id="java_export-pom_template"></a>pom_template |  <p align="center"> - </p>   |  <code>None</code> |
| <a id="java_export-deploy_env"></a>deploy_env |  <p align="center"> - </p>   |  <code>None</code> |
| <a id="java_export-visibility"></a>visibility |  <p align="center"> - </p>   |  <code>None</code> |
| <a id="java_export-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


<a id="#java_junit5_test"></a>

## java_junit5_test

<pre>
java_junit5_test(<a href="#java_junit5_test-name">name</a>, <a href="#java_junit5_test-test_class">test_class</a>, <a href="#java_junit5_test-runtime_deps">runtime_deps</a>, <a href="#java_junit5_test-kwargs">kwargs</a>)
</pre>

Run junit5 tests using Bazel.

This is designed to be a drop-in replacement for `java_test`, but
rather than using a JUnit4 runner it provides support for using
JUnit5 directly. The arguments are the same as used by `java_test`.

The generated target does not include any JUnit5 dependencies. If
you are using the standard `@maven` namespace for your
`maven_install` you can add these to your `deps` using `JUNIT5_DEPS`
or `JUNIT5_VINTAGE_DEPS` loaded from `//java:defs.bzl`


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="java_junit5_test-name"></a>name |  The name of the test.   |  none |
| <a id="java_junit5_test-test_class"></a>test_class |  The Java class to be loaded by the test runner. If not specified, the class name will be inferred from a combination of the current bazel package and the <code>name</code> attribute.   |  <code>None</code> |
| <a id="java_junit5_test-runtime_deps"></a>runtime_deps |  <p align="center"> - </p>   |  <code>[]</code> |
| <a id="java_junit5_test-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


<a id="#java_library"></a>

## java_library

<pre>
java_library(<a href="#java_library-name">name</a>, <a href="#java_library-kwargs">kwargs</a>)
</pre>

Adds linting tests to Bazel's own `java_library`

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="java_library-name"></a>name |  <p align="center"> - </p>   |  none |
| <a id="java_library-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


<a id="#java_test"></a>

## java_test

<pre>
java_test(<a href="#java_test-name">name</a>, <a href="#java_test-kwargs">kwargs</a>)
</pre>

Adds linting tests to Bazel's own `java_test`

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="java_test-name"></a>name |  <p align="center"> - </p>   |  none |
| <a id="java_test-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


<a id="#java_test_suite"></a>

## java_test_suite

<pre>
java_test_suite(<a href="#java_test_suite-name">name</a>, <a href="#java_test_suite-srcs">srcs</a>, <a href="#java_test_suite-runner">runner</a>, <a href="#java_test_suite-test_suffixes">test_suffixes</a>, <a href="#java_test_suite-deps">deps</a>, <a href="#java_test_suite-runtime_deps">runtime_deps</a>, <a href="#java_test_suite-tags">tags</a>, <a href="#java_test_suite-visibility">visibility</a>, <a href="#java_test_suite-size">size</a>,
                <a href="#java_test_suite-kwargs">kwargs</a>)
</pre>

Create a suite of java tests from `*Test.java` files.

This rule will create a `java_test` for each file which matches
any of the `test_suffixes` that are passed to this rule as
`srcs`. If any non-test sources are added these will first of all
be compiled into a `java_library` which will be added as a
dependency for each test target, allowing common utility functions
to be shared between tests.

The generated `java_test` targets will be named after the test file:
`FooTest.java` will create a `:FooTest` target.

In addition, a `test_suite` will be created, named using the `name`
attribute to allow all the tests to be run in one go.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="java_test_suite-name"></a>name |  A unique name for this rule. Will be used to generate a <code>test_suite</code>   |  none |
| <a id="java_test_suite-srcs"></a>srcs |  Source files to create test rules for.   |  none |
| <a id="java_test_suite-runner"></a>runner |  One of <code>junit4</code> or <code>junit5</code>.   |  <code>"junit4"</code> |
| <a id="java_test_suite-test_suffixes"></a>test_suffixes |  The file name suffix used to identify if a file contains a test class.   |  <code>["Test.java"]</code> |
| <a id="java_test_suite-deps"></a>deps |  A list of <code>java_*</code> dependencies.   |  <code>None</code> |
| <a id="java_test_suite-runtime_deps"></a>runtime_deps |  A list of <code>java_*</code> dependencies needed at runtime.   |  <code>[]</code> |
| <a id="java_test_suite-tags"></a>tags |  <p align="center"> - </p>   |  <code>[]</code> |
| <a id="java_test_suite-visibility"></a>visibility |  <p align="center"> - </p>   |  <code>None</code> |
| <a id="java_test_suite-size"></a>size |  The size of the test, passed to <code>java_test</code>   |  <code>None</code> |
| <a id="java_test_suite-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |



## Freezing Dependencies

At runtime, a handful of dependencies are required by helper classes
in this project. Rather than pollute the default `@maven` workspace,
these are loaded into a `@rules_jvm_contrib_deps` workspace. These
dependencies are loaded using a call to `maven_install`, but we don't
want to force users to remember to load our own dependencies for
us. Instead, to add a new dependency to the project:

1. Update `frozen_deps` in the `WORKSPACE` file
2. Run `./bin/freeze-deps.py`
3. Commit the updated files.