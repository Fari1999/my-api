#!/bin/bash

cd ~/my-api

git pull origin main

docker build -t my-api .

docker stop my-api || true
docker rm my-api || true

docker run -d -p 8000:8000 --name my-api my-api

