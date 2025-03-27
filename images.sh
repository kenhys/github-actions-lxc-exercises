#!/bin/bash

set -ux

echo "::group::Run test: list images"
lxc image list images:
echo "::endgroup::"

echo "::group::Run test: show info images:centos/7"
lxc image info images:centos/7
echo "::endgroup::"

echo "::group::Run test: show info images:amazonlinux/2"
lxc image info images:amazonlinux/2
echo "::endgroup::"

echo "::group::Run test: show info images:amazonlinux/2023"
lxc image info images:amazonlinux/2023
echo "::endgroup::"

echo "::group::Use images.linuxcontainers.org"
lxc remote add linuxcontainers https://images.linuxcontainers.org
echo "::endgroup::"

echo "::group::Run test: show info linuxcontainers:amazonlinux/2"
lxc image info linuxcontainers:amazonlinux/2
echo "::endgroup::"

echo "::group::Run test: show info linuxcontainers:amazonlinux/2023"
lxc image info linuxcontainers:amazonlinux/2023
echo "::endgroup::"

echo -e "\nAll check has passed!\n"
