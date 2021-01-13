# Install Rust 
# More information about installing Rust can be found here: https://www.rust-lang.org/tools/install.
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Add rustup target wasm32 for both stable and nightly
rustup default stable
rustup target list --installed
rustup target add wasm32-unknown-unknown

rustup install nightly
rustup target add wasm32-unknown-unknown --toolchain nightly

# If using linux, install the standard build tools:
# apt install build-essential

# Install cargo-generate, in order to create a Secret Contract project from a template

cargo install cargo-generate --features vendored-openssl