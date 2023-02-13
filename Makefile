all: build

build:
	docker build -t="tyleraharrison/dockerspicexfce4" github.com/tyleraharrison/DockerSpiceXfce4

run:
	docker run -p 5900:5900 tyleraharrison/dockerspicexfce4