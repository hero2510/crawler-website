#!/bin/bash
docker rm -f website
docker images --format '{{.Repository}}:{{.Tag}}' | grep 'hero2510/crawler-website' | xargs -r docker rmi
docker run --net crawler --name website -p 3100:80 hero2510/crawler-website:$1