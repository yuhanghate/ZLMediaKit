docker stop zlm
docker rm zlm
docker run -d --name zlm -v /root/docker/openEuler.repo:/etc/yum.repos.d/openEuler.repo  -v /root/docker/ZLMediaKit:/root/ZLMediaKit  zlm:latest
docker exec -it zlm /bin/bash