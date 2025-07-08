docker run -it --name mac11os -p 8006:8006 --device=/dev/kvm --device=/dev/net/tun --cap-add NET_ADMIN -v "${PWD:-.}/macos:/storage" -e VERSION="11" -e RAM_SIZE="8G" -e CPU_CORES="8" -e DISK_SIZE="128G" dockurr/macos

