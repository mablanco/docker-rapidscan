# docker-rapidscan

Docker image for Rapidscan, a multi-tool web vulnerability scanner (<https://github.com/skavngr/rapidscan>). This image is built on official Kali Linux image.

## How to use this image

By default, this image will run Rapidscan with no parameters. You have to add the ones you need according to the documentation in the Rapidscan repository.

### Show Rapidscan inline help

    $ docker run -t --rm --name rapidscan mablanco/rapidscan

### Run an analysis against a website

    $ docker run -it --rm --name rapidscan mablanco/rapidscan example.com
