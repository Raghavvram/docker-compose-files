# Docker Compose Files Collection

This repository serves as a centralized collection of `docker-compose.yml` files for various self-hosted applications and services. Each subdirectory contains the necessary `docker-compose.yml` file(s) to quickly set up and run a specific application using Docker Compose.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

*   **Docker Engine:** [Installation Guide](https://docs.docker.com/engine/install/)
*   **Docker Compose:** [Installation Guide](https://docs.docker.com/compose/install/)

## Usage

To use any of the `docker-compose.yml` files in this repository:

1.  Navigate into the desired application's directory:
    ```bash
    cd <application-name>/
    ```
    (e.g., `cd excalidraw/`)

2.  Start the services defined in the `docker-compose.yml` file:
    ```bash
    docker-compose up -d
    ```
    This command will download the necessary Docker images (if not already present), create and start the containers in detached mode (in the background).

3.  To stop the services:
    ```bash
    docker-compose down
    ```

## Applications Included

Here's a list of the applications currently available in this collection:

*   **Excalidraw:** A virtual whiteboard for sketching hand-drawn like diagrams.
*   **IT-Tools:** A collection of handy online tools for developers.
*   **Kasm Desktop:** A containerized desktop environment.
*   **MySQL Workbench:** A visual tool for database design, development, and administration for MySQL.
*   **Nginx Proxy Manager:** A beautiful web interface for managing Nginx proxy hosts with a focus on ease of use and including free SSL.
*   **phpMyAdmin:** A free software tool written in PHP, intended to handle the administration of MySQL or MariaDB over the Web.
*   **Readeck:** A simple web application to save articles for later reading.
*   **Stirling PDF:** A powerful PDF manipulation tool.
*   **Tududi:** A simple web application for managing tasks and notes.
*   **Webtop Distros:** Contains `docker-compose` files for various Webtop distributions (e.g., Arch Linux with XFCE, Ubuntu with Openbox). Also includes `Nvidia_Support_Config.md` for Nvidia GPU passthrough configurations.

---

**Note:** For specific configurations or additional details, please refer to the `docker-compose.yml` file within each application's directory.