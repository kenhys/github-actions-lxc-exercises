#!/bin/bash

set -ux

echo "::group::Run test: show info ubuntu:n"
lxc image info ubuntu:n
echo "::endgroup::"

echo "::group::Run test: show info ubuntu:24.04"
lxc image info ubuntu:24.04
echo "::endgroup::"

echo "::group::Run test: show info 24.04"
lxc image info 24.04
echo "::endgroup::"

echo "::group::Run test: show info noble"
lxc image info noble
echo "::endgroup::"

echo "::group::Run test: list ubuntu images"
lxc image list ubuntu:
echo "::endgroup::"



echo -e "\nAll check has passed!\n"
