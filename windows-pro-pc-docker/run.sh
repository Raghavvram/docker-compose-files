docker run -it --name windows \
  -p 8006:8006 \
  --device=/dev/kvm \
  --device=/dev/net/tun \
  --device=/dev/sda1 \
  --cap-add NET_ADMIN \
  -v "${PWD:-.}/windows:/storage" \
  dockurr/windows

