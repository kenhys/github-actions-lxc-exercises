#!/usr/bin/bash

uname -a
echo "::group::lxc ls"
lxc ls
echo "::endgroup::"
echo "::group::snap info lxd"
snap info lxd
echo "::endgroup::"
echo "::group::snap services lxd"
snap services lxd
echo "::endgroup::"
echo "::group::snap logs lxd"
sudo snap logs lxd
echo "::endgroup::"
