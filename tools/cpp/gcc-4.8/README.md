# GCC 4.8 CROSSTOOL

This directory contains tools that allow us to use a packaged version of GCC
when building our code. This in turn enables effective build caching because
every developer uses the same exact compiler, includes, and libs to build the
code. This CROSSTOOL is not enabled by default so for now you must opt-in to
using it by using the `--config=custom_gcc` option.

These files were created by following [Building with a custom toolchain][0]
from the Bazel wiki.

[0]: https://github.com/bazelbuild/bazel/wiki/Building-with-a-custom-toolchain
