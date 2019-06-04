#/bin/bash
docker build --pull --no-cache -t darkcheyenne/docker-rolling-updated:20190504 .
docker build --pull --no-cache -t darkcheyenne/docker-rolling-updated:latest .

docker push docker-rolling-updated:20190504
docker push darkcheyenne/docker-rolling-updated:latest
