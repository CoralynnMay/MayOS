#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
curl -o /tmp/bitwarden.rpm --proto '=https' --tlsv1.2 -L "https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=rpm"
mkdir -p "/var/opt"
ln -s "/var/opt" "/opt"
mkdir -p "/usr/lib/opt/Bitwarden"
ln -s "../../usr/lib/opt/Bitwarden" "/var/opt/Bitwarden"
rpm-ostree install /tmp/bitwarden.rpm
