# Docker Tsung image

## Supported tags and respective `Dockerfile` links

- [`1.7.0`, `1.7`, `1`, `latest` (*Dockerfile*)](https://github.com/tomersha/docker-tsung/blob/master/1.7/Dockerfile)

## Build and update process

This image is automatically built at every push of this repository and every time that the `erlang:20` base image gets updated in order to ensure that bugfixes and security updates are immediately applied.

## Run

```
docker run -v /path/to/tsung.xml:/root/.tsung/tsung.xml -v /path/to/logs:/root/.tsung/log -p 8091:8091 tomersha/tsung:1.7
```

Or, you can create your own derived image, with the configuration in the image itself.

```dockerfile
FROM tomersha/tsung:1.7
COPY my-config/tsung.xml /root/.tsung/tsung.xml
```

You should be able to access the web-ui on the 8091 IP address while tests are running.

## Configuration file

You can find some examples of the `tsung.xml` in the official repository: <https://github.com/processone/tsung/tree/master/examples>

And in the official docs: <http://tsung.erlang-projects.org/user_manual/index.html>
