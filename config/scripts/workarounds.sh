#!/bin/sh

set -oeux pipefail

# alternatives cannot create symlinks on its own during a container build
ln -sf /usr/bin/ld.bfd /etc/alternatives/ld && ln -sf /etc/alternatives/ld /usr/bin/ld
/usr/sbin/alternatives --install /usr/bin/emacs emacs /usr/bin/emacs-29.2 80
