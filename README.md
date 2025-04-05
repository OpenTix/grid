# Github Runners in Docker

This repo contains the files necessary to run multiple github runners for the OpenTix org on the one computer using Docker.

When composing the docker file you can scale to as many runners as you want. Currently each runner is alotted 2 cpu cores and 256 MB of ram.

# Setup

First generate a PAT token (classic) with the repo, workflow, and admin:org permissions.

Then run ./setup.sh and provide your PAT token. This will create a compose.yml file and you are ready to run grid.

# How to Use

[Make sure docker is installed.](https://docs.docker.com/engine/install/ubuntu/)

Run `docker compose up --privileged --build --scale runner=4`.

To force fresh build run `docker compose build --no-cache`

# Setting up as Service

Example in platform-runner.service.
