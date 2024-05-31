#!/bin/bash

set -eux

echo "::group::Run test: list images"
lxc image list images:
echo "::endgroup::"

echo "::group::Run test: list ubuntu images"
lxc image list ubuntu:
echo "::endgroup::"

echo -e "\nAll check has passed!\n"
