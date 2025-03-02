It looks like you're running into a couple of issues on Arch Linux. Let's address them one by one.

### Issue 1: `nvidia-ctk` command not found
The `nvidia-ctk` command is part of the NVIDIA Container Toolkit. To install it on Arch Linux, you can follow these steps:

1. **Install the NVIDIA Container Toolkit:**
   ```sh
   sudo pacman -S nvidia-container-toolkit
   ```

2. **Configure the NVIDIA runtime for Docker:**
   ```sh
   sudo nvidia-ctk runtime configure --runtime=docker --set-as-default
   ```

### Issue 2: `service` command not found
Arch Linux uses `systemd` instead of the traditional `service` command. To restart the Docker service, you should use `systemctl`:

1. **Restart the Docker service:**
   ```sh
   sudo systemctl restart docker
   ```

These steps should help you resolve the issues you're facing. If you encounter any further problems, feel free to ask!
