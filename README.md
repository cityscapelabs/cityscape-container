# Docker image for cityscape
> Krishna Kumar

[![Quay image](https://img.shields.io/badge/quay--image-cityscapelabs--cityscape-ff69b4.svg)](https://quay.io/repository/cityscapelabs/cityscape)
[![CircleCI](https://circleci.com/gh/cityscapelabs/cityscape-container.svg?style=svg)](https://circleci.com/gh/cityscapelabs/cityscape-container)

# Using the docker image
* The docker image can be used directly from the Docker Hub or Quay.io
* Pull the docker image `docker pull cityscapelabs/cityscape` or `docker pull quay.io/cityscapelabs/cityscape`
* To launch the `cityscapelabs/cityscape`  docker container, run `docker run -ti cityscapelabs/cityscape:latest /bin/bash` or `docker run -ti quay.io/cityscapelabs/cityscape:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`

# Creating an image from the docker file
* To build an image from docker file run as root `docker build -t "cityscapelabs/cityscape" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.
