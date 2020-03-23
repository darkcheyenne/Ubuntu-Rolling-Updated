#/bin/bash
logger Start von Erstellung von Docker Image Ubuntu Rolling Updated
# docker build --pull --no-cache -t darkcheyenne/docker-rolling-updated:latest -t docker.pkg.github.com/darkcheyenne/ubuntu-rolling-updated/base:latest . | grep 'built\|tagged' | logger
docker build --pull --no-cache -t darkcheyenne/docker-rolling-updated:latest -t docker.pkg.github.com/darkcheyenne/ubuntu-rolling-updated/base:latest .

logger Upload von Ubuntu Rolling Updated zu Dockerhub
docker push darkcheyenne/docker-rolling-updated:latest
logger Upload von Ubuntu Rolling Updated zu Github
docker push docker.pkg.github.com/darkcheyenne/ubuntu-rolling-updated/base:latest
