#!/bin/bash

set -eux

image=$1

echo "::group::Run test: launch $image"
lxc launch $image target
sleep 5
echo "::endgroup::"
echo "::group::Run test: configure $image"
lxc config device add target host disk source=$PWD path=/host
lxc list
echo "::endgroup::"
echo "::group::Run test: show container info"
lxc exec target -- /host/info.sh
echo "::endgroup::"
echo "::group::Run test: cleanup $image"
lxc stop target
lxc delete target
echo "::endgroup::"
echo -e "\nAll Success!\n"
