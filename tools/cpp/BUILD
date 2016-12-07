package(default_visibility = ["//visibility:public"])

cc_library(
    name = "malloc",
)

cc_library(
    name = "stl",
)

filegroup(
    name = "empty",
    srcs = [],
)

# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# "cc-compiler-${CPU}" in this BUILD file, where CPU is the target CPU
# specified in --cpu.
#
# This file group should include
#   * all cc_toolchain targets supported
#   * all file groups that said cc_toolchain might refer to,
# including the default_grte_top setting in the CROSSTOOL
# protobuf.
filegroup(
    name = "toolchain",
    srcs = [
        ":cc-compiler-local",
        ":empty",
    ],
)

cc_toolchain(
    name = "cc-compiler-local",
    all_files = ":gcc_4_8_all_files",
    compiler_files = ":gcc_4_8_compiler_files",
    cpu = "local",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":gcc_4_8_linker_files",
    objcopy_files = ":gcc_4_8_objcopy",
    static_runtime_libs = [":empty"],
    strip_files = ":gcc_4_8_strip",
    supports_param_files = 1,
)

filegroup(
    name = 'gcc_4_8_all_files',
    srcs = [
        ':gcc_4_8_tool-wrappers',
        '@gcc_4_8//:compiler_pieces',
    ]
)

filegroup(
    name = 'gcc_4_8_linker_files',
    srcs = [
        ':gcc_4_8',
        ':gcc_4_8_ld',
        ':gcc_4_8_ar',
        '@gcc_4_8//:compiler_pieces',
    ]
)

filegroup(
    name = 'gcc_4_8_compiler_files',
    srcs = [
        ':gcc_4_8',
        ':gcc_4_8_ld',
        ':gcc_4_8_as',
    ]
)

filegroup(
    name = 'gcc_4_8',
    srcs = [
        '@gcc_4_8//:gcc',
        'gcc-4.8/bin/gcc',
    ],
)

filegroup(
    name = 'gcc_4_8_gcov',
    srcs = [
        '@gcc_4_8//:gcov',
        'gcc-4.8/bin/gcov',
    ],
)

filegroup(
    name = 'gcc_4_8_ar',
    srcs = [
        '@gcc_4_8//:ar',
        'gcc-4.8/bin/ar',
    ],
)

filegroup(
    name = 'gcc_4_8_ld',
    srcs = [
        '@gcc_4_8//:ld',
        'gcc-4.8/bin/ld',
    ],
)

filegroup(
    name = 'gcc_4_8_nm',
    srcs = [
        '@gcc_4_8//:nm',
        'gcc-4.8/bin/nm',
    ],
)

filegroup(
    name = 'gcc_4_8_objcopy',
    srcs = [
        '@gcc_4_8//:objcopy',
        'gcc-4.8/bin/objcopy',
    ],
)

filegroup(
    name = 'gcc_4_8_objdump',
    srcs = [
        '@gcc_4_8//:objdump',
        'gcc-4.8/bin/objdump',
    ],
)

filegroup(
    name = 'gcc_4_8_strip',
    srcs = [
        '@gcc_4_8//:strip',
        'gcc-4.8/bin/strip',
    ],
)

filegroup(
    name = 'gcc_4_8_as',
    srcs = [
        '@gcc_4_8//:as',
        'gcc-4.8/bin/as',
    ],
)

filegroup(
    name = 'gcc_4_8_tool-wrappers',
    srcs = [
        ':gcc_4_8',
        ':gcc_4_8_ar',
        ':gcc_4_8_ld',
        ':gcc_4_8_nm',
        ':gcc_4_8_objcopy',
        ':gcc_4_8_objdump',
        ':gcc_4_8_strip',
        ':gcc_4_8_as',
    ],
)

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
)
