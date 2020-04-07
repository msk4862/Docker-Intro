# Docker-Introduction
This is a simple nodeJs project to learn working of Docker containers.

> ### To learn more about docker conatiners you can have a look at this [course](https://btholt.github.io/complete-intro-to-containers/).

## Some docker basic commands
* To show running containers
> `docker ps`
* To downoad any image from [docker hub](https://hub.docker.com/)
> `docker pull <image_name>`
* Run docker image/container (`-it` flag is for interactive shell)
> `docker run -it <conatiner/image>`
* To run a specific file in that container
> `docker run -it <conatiner> <filename>`
* To build conatiner
> `docker build -t <container_name> <path/to/project>`
* To build conatiner
> `docker build -t <container_name> <path/to/project>`
* To view info about your container
> `docker inspect <conatiner name>`
* To expose port while running
> docker run --publish <port:port>
* To delete docker container
> `docker rm <container>`
* To kill a running container
> `docker kill <conatiner>`
* To view logs
> `docker logs <container>`
