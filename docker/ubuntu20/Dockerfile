# 使用openEuler 24.03-lts作为基础镜像，并且给这个构建阶段起别名 "build"
FROM openeuler/openeuler:24.03-lts

# 将容器内的用户切换为root，以便后续进行一些需要root权限的操作
USER root

EXPOSE 9000/tcp
EXPOSE 1935/tcp
EXPOSE 554/tcp
EXPOSE 322/tcp
EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 10000/udp
EXPOSE 10000/tcp

WORKDIR /root
ADD ZLMediaKit.zip /root

RUN yum update && yum -y install unzip zip  && unzip /root/ZLMediaKit.zip  && yum -y install gcc gcc-c++ cmake openssl-devel ffmpeg-devel SDL2-devel



ENV PATH /root/ZLMediaKit/release/linux/Debug:$PATH

# WORKDIR /root/ZLMediaKit/release/linux/Debug
# 使用tail -f /dev/null命令让容器保持运行状态，可用于在容器启动后进行后续的调试或其他操作（例如通过docker exec进入容器后进行操作）
# CMD tail -f /dev/null
CMD ["MediaServer", "-c", "config.ini"]