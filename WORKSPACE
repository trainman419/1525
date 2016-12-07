
bind(
    name = "a_lib",
    actual = "@ab_lib_repo//:a_lib",
)

new_http_archive(
    name = "ab_lib_repo",
    url = "http://localhost:8080/ext.tgz",
    build_file = "build/BUILD.ab",
    sha256 = "4cc3e34ce80043f1f3959c9021a1af83ea670c039895796d76ef7ce02c524ce3",
)

new_http_archive(
    name = "gcc_4_8",
    url = "http://namniart.com/gcc_4_8.tar.gz",
    sha256 = "c086b10b2c279f01c0ddaf601467a1b1b9450d667b2dcc21b0f7df90364bea45",
    build_file = "build/BUILD.gcc_4_8",
)
