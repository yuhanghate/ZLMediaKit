docker stop linux
docker rm linux
docker run -d --name linux -v /Users/yuhang/ZLMediaKit:/root/ZLMediaKit  linux:latest
docker exec -it linux /bin/bash