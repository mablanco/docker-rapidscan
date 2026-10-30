# docker-rapidscan

> **DEPRECATED:** this image is no longer maintained and will not receive updates. RapidScan decides whether each test found a vulnerability by matching text in the output of the underlying tools, and those matches no longer fit the tool versions shipped by current Kali, so it reports false critical findings (XSS and Shellshock on a stock nginx, for example). Upstream has not been updated since 2023.

Docker image for Rapidscan, a multi-tool web vulnerability scanner (<https://github.com/skavngr/rapidscan>). This image is built on official Kali Linux image.

## How to use this image

By default, this image will run Rapidscan with no parameters. You have to add the ones you need according to the documentation in the Rapidscan repository.

### Show Rapidscan inline help

```bash
~ docker run -t --rm mablanco/rapidscan
```

### Run an analysis against a website, saving report in <host_report_folder>

```bash
~ docker run -it --rm -v <host_report_folder>:/app mablanco/rapidscan example.com
```
