#!/usr/bin/env bash

# REQ: Installs element desktop. <eris 2023-05-30>

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

set +o braceexpand
set -o errexit
set -o noclobber
set -o noglob
set -o nounset
set -o pipefail
set -o xtrace

readonly keyserver=https://packages.element.io/debian/element-io-archive-keyring.gpg
readonly fingerprint=12D4CD600C2240A9F4A82071D7B0B66941D01538
readonly keyring=/usr/share/keyrings/element-io-archive-keyring.gpg

arch=$(dpkg --print-architecture)
readonly arch

readonly repo=https://packages.element.io/debian/
readonly distro=default
readonly component=main

readonly list=/etc/apt/sources.list.d/element-io.list
readonly entry="deb [arch=$arch signed-by=$keyring] $repo $distro $component"
readonly package=element-desktop

gpg --version

sudo gpg --no-default-keyring \
  --keyring "$keyring" --keyserver "$keyserver" --recv-keys "$fingerprint"

sudo bash -c "echo ${entry@Q} > ${list@Q}"

sudo apt-get update

sudo apt-get install --yes element-desktop
