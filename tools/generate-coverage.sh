#!/usr/bin/env bash
parent=$(realpath -m -- "${0}"/../..)
cd "${parent}"
TO=.coverage
OS=nix
deno test -A --coverage=${TO}/profile.${OS}
deno coverage ${TO}/profile.${OS} --lcov > ${TO}/profile.${OS}.lcov
genhtml -o ${TO}/html.${OS} ${TO}/profile.${OS}.lcov --branch-coverage --function-coverage
