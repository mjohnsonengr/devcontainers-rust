# Rust devcontainers
A collection of dev container features designed for working with rust in various contexts.

## Usage
To use a feature from this repository, add it to a devcontainer.json. You can read more about devcontainer features here: https://containers.dev/features

## Compatibility
Note that all these images depend on having the rust feature set up (`ghcr.io/devcontainers/features/rust:1`), as well as using either `debian:latest` or `ubuntu:latest` as the base image since the default devcontainer image causes issues with permissions.

## Available Features
| Feature | OCI Image | Description |
| - | - | - |
| | **Rust Tools** | |
| Cargo Binstall | ghcr.io/mjohnsonengr/devcontainers-rust/cargo-binstall:0 | Installs [Cargo Binstall](https://github.com/cargo-bins/cargo-binstall) - an alternative to cargo install that will download binaries if they exist, and only build from source if binaries aren't found. You can also specify a `packages` option - which is a comma-separated list of cargo applications you want to install. |