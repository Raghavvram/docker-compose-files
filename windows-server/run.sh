docker run -it --name windowsServer \
  -p 8006:8006 \
  --device=/dev/kvm \
  --device=/dev/net/tun \
  --cap-add NET_ADMIN \
  -v "${PWD:-.}/windows:/storage" \
  -e RAM_SIZE="8G" \
  -e CPU_CORES="4" \
  -e USERNAME="admin" \
  -e PASSWORD="admin" \
  -e REGION="en-US" \
  -e KEYBOARD="en-US" \
  -e VERSION="2025" \
  dockurr/windows

