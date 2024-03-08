# debug-container

This repository contains a minimal docker configuration to have access to C/C++ debugging tools that are not available on macOS (for example `valgrind`).

## Installation

To install it, just clone this repository and run:
```sh
docker build -t dbg .
```

## Running the container

Once the image has been created, just go to a folder containing code you want to debug and run:
```sh
docker run --rm -itv `realpath .`:/home dbg
```
You will then have access to a shell in which you can debug your code, and the container will automatically stop as soon as you leave this shell.

## Extending the configuration

This configuration contains only basic tools for debugging C/C++ code, but you can easily extend it by adding new packages in the `Dockerfile`.

## Sidenotes

This configuration was inspired by [this one](https://github.com/Le-Technologue/debug-tools).
I tried to make it as light as possible by installing fewer packages.
