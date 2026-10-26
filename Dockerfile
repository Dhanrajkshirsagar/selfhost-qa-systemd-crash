# QA fixture for selfhost-dev/selfhost#4224: a container whose main process is systemd.
# Under Docker without a TTY, systemd writes only to /dev/console and crash-loops with no logs.
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends systemd && rm -rf /var/lib/apt/lists/*
EXPOSE 8080
CMD ["/sbin/init"]
