#!/bin/bash
set -e

PACKAGES=${PACKAGES:-""}

CARGO_PACKAGES=("${PACKAGES//,/ }")

umask 002 # Must happen before any cargo commands

cargo install cargo-binstall

if [ -z "${PACKAGES}" ]; then
    echo "No packages specified, and no upgrade required. Skip installation..."
    exit 0
fi

cargo binstall -y --force --locked $CARGO_PACKAGES
