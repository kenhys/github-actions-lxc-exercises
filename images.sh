#!/bin/bash

set -eux

echo "::group::Run test: list images"
lxc image list images:
echo "::endgroup::"

echo -e "\nAll check has passed!\n"
