#!/bin/bash

now=$(date)

mkdir -p /tmp/ab
cp ext/* /tmp/ab

# clean and shutdown so that we're starting from a known state
bazel clean
bazel shutdown

# check out the initial state
git checkout start_2

echo "start"
ls -l build/BUILD.ab
touch -m -d "$now" build/BUILD.ab
echo "touched"
ls -l build/BUILD.ab
cat build/BUILD.ab

bazel build //repro:repro_1525
bazel run //repro:repro_1525

# check out the new state; try to repro
git checkout master_2
echo "master"
ls -l build/BUILD.ab
touch -m -d "$now" build/BUILD.ab
echo "touched"
ls -l build/BUILD.ab
cat build/BUILD.ab

bazel build //repro:repro_1525
bazel run //repro:repro_1525

