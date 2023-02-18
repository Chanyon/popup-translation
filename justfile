#!/usr/bin/env just --justfile

run args: release
    ./target/release/fanyi {{args}}

rund: release
    ./target/release/fanyi

test:
  cargo test



release:
  cargo build --release

install:
    cargo install --path .

lint:
  cargo clippy

pub:
    cargo publish