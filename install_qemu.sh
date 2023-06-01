sudo apt-get update

sudo apt-get install -y git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev ninja-build

# Enable slirp
sudo apt-get install -y libslirp0 libslirp-dev

# Enable NUMA node binding
sudo apt-get install -y libnuma-dev

# Clone QEMU
git clone https://github.com/qemu/qemu.git

# Switch to the QEMU root directory.
cd qemu
# Change version
git checkout v8.0.2

# Prepare a native debug build.
#mkdir -p bin/debug/native
#cd bin/debug/native
# Configure QEMU and start the build.
#../../../configure --enable-debug
#make -j 32
# Return to the QEMU root directory.
#cd ../../..

# Configure QEMU for x86_64 only - faster build
./configure --target-list=x86_64-softmmu --enable-debug
# Build in parallel
make -j 41
