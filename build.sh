#/bin/bash
docker build --pull --no-cache -t darkcheyenne/docker-rolling-updated:latest .

docker push darkcheyenne/docker-rolling-updated:latest
