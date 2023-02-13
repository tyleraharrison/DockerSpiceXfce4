# DockerSpiceXFCE4

This repository contains **Dockerfile** of [Ubuntu Desktop (Xfce4)](http://xfce.org/) for [Docker](https://www.docker.com/)

## Quick Start

Run the following command to start the container:

```bash
git clone https://github.com/tyleraharrison/DockerSpiceXfce4.git; \
cd DockerSpiceXfce4; \
docker build -t="tyleraharrison/dockerspicexfce4" github.com/tyleraharrison/DockerSpiceXfce4`); \
docker run -p 5900:5900 tyleraharrison/dockerspicexfce4
```

## Base Docker Image

* [ubuntu:20.04](https://registry.hub.docker.com/_/ubuntu/)

## Installation

1. Install [Docker](https://docs.tylerharrison.dev/docker/#automated-install-script)

2. Clone [Git repository](https://github.com/tyleraharrison/DockerSpiceXfce4)

3. Build the image

```bash
docker build -t="tyleraharrison/dockerspicexfce4" github.com/tyleraharrison/DockerSpiceXfce4`)
```

4. Run the image

## Usage

```bash
docker run -p 5900:5900 tyleraharrison/dockerspicexfce4
```

If you local user is 'user' and your uid is '1000' and you want map your /home/user in Docker:

```bash
docker run -p 5900:5900 -e SPICE_USER=user -e SPICE_UID=1000 -v /home/user:/home/user -e SPICE_PASSWD="azerty" -e SPICE_LOCAL="fr_FR.UTF-8" -e SPICE_RES="1366x768" tyleraharrison/dockerspicexfce4
```

Connect via Spice client

```bash
remote-viewer spice://localhost:5900
```

The default password is `password`.
