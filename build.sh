#/bin/bash
echo 🚀 Start von Erstellung von Docker Image Ubuntu Rolling Updated
docker build --pull --no-cache -t darkcheyenne/docker-rolling-updated:latest -t docker.pkg.github.com/darkcheyenne/ubuntu-rolling-updated/base:latest .

echo 🛰 Upload von Ubuntu Rolling Updated zu Dockerhub
docker push darkcheyenne/docker-rolling-updated:latest
echo 🛰 Upload von Ubuntu Rolling Updated zu Github
docker push docker.pkg.github.com/darkcheyenne/ubuntu-rolling-updated/base:latest
