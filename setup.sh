#!/bin/bash

# Get the users github PAT token
echo What is your Githun PAT token?
read token

echo "services:
  runner:
    privileged: true
    build:
      context: .
      dockerfile: Dockerfile
    restart: always
    environment:
      - TOKEN=${token}
      - ORG=OpenTix
    deploy:
      resources:
        reservations:
          cpus: '2'
          memory: 256M" > compose.yml
