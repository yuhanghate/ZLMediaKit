docker stop zlm
docker rm zlm
docker run -d --name zlm -v /etc/yum.repos.d/openEuler.repo:/root/docker/openEuler.repo  -v /root/docker/ZLMediaKit:/root/ZLMediaKit  zlm:latest
docker exec -it zlm /bin/bash