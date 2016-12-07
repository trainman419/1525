#!/bin/bash

# clean and shutdown so that we're starting from a known state
bazel clean
bazel shutdown

# check out the initial state
git checkout start
bazel build -s //repro:repro_1525
bazel run -s //repro:repro_1525

# check out the new state; try to repro
git checkout master
#bazel shutdown
bazel build -s //repro:repro_1525
bazel run -s //repro:repro_1525

