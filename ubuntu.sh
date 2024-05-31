#!/bin/bash

set -ux

echo "::group::Run test: list ubuntu images"
lxc image list ubuntu:
echo "::endgroup::"

echo "::group::Run test: show info ubuntu:n"
lxc image info ubuntu:n
echo "::endgroup::"


echo -e "\nAll check has passed!\n"
