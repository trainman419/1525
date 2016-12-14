workspace( name = "repro_1525" )

bind(
    name = "a_lib",
    actual = "@ab_lib_repo//:a_lib",
)

new_local_repository(
    name = "ab_lib_repo",
    path = "/tmp/ab", 
    build_file = "build/BUILD.ab",
)
