# docker-adoptOpenJDK-11

Dockerfile for a [dockerimage]() containing Adoptium OpenJDK 11 on
[Debian 11](https://github.com/arthurpicht/docker-debian-11)

## Build image locally

    docker build -t arthurpicht/debian-10:latest https://github.com/arthurpicht/docker-debian-10.git
    docker build -t arthurpicht/adoptopenjdk-11:latest https://github.com/arthurpicht/docker-adoptOpenJDK-11.git 

## Update History:

* 2021-05-21: jdk-11.0.11+9 from 21 April 2021, provided by [openjdk.net](https://adoptopenjdk.net/)
* 2021-12-01: jdk-11.0.13+8 from 21 October 2021, provided by [adoptium.net](https://adoptium.net/); debian 11

## References

* [My images on dockerhub](https://hub.docker.com/search?q=arthurpicht&type=image)
* [adoptium archive](https://adoptium.net/archive.html?variant=openjdk11)