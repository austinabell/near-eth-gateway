#!/bin/bash
set -e

RUSTFLAGS='-C link-arg=-s' cargo +nightly build --target wasm32-unknown-unknown --release
cp ../target/wasm32-unknown-unknown/release/proxy.wasm ../res/
