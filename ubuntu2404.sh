#!/bin/bash

set -eux

echo "::group::Run test: launch ubuntu 24.04"
lxc launch ubuntu:n target
sleep 5
echo "::endgroup::"
echo "::group::Run test: configure $image"
lxc config device add target host disk source=$PWD path=/host
lxc list
echo "::endgroup::"
echo "::group::Run test: show container info"
lxc exec target -- /host/info.sh
echo "::endgroup::"
echo "::group::Run test: cleanup ubuntu 24.04"
lxc stop target
lxc delete target
echo "::endgroup::"
echo -e "\nAll Success!\n"
