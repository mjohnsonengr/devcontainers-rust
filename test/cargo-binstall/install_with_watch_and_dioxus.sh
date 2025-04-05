#!/bin/bash

set -e

function check_cargo() {
    local package="$1"
    local filename="$2"
    cargo install --list | grep "$package"
}

source dev-container-features-test-lib

check "cargo-watch installed" check_cargo cargo-watch
check "dioxus-cli installed" check_cargo dioxus-cli

reportResults
