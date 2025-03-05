# grid
Github Runners in Docker


# Setup

Move format.yml to compose.yml and add you github PAT token.

You need repo, workflow, and admin:org permissions.

# How to Use

[Make sure docker is installed.](https://docs.docker.com/engine/install/ubuntu/)

Run `docker compose up --build --scale runner=4`.

To force fresh build run `docker compose build --no-cache`