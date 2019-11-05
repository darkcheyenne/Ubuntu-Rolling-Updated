#/bin/bash
docker build --pull --no-cache -t darkcheyenne/docker-rolling-updated:latest -t docker.pkg.github.com/darkcheyenne/ubuntu-rolling-updated/base:latest .

docker push darkcheyenne/docker-rolling-updated:latest
# docker push docker.pkg.github.com/darkcheyenne/ubuntu-rolling-updated/base:latest
