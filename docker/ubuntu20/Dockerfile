# 使用openEuler 24.03-lts作为基础镜像，并且给这个构建阶段起别名 "build"
FROM openeuler/openeuler:24.03-lts as build

# 将容器内的用户切换为root，以便后续进行一些需要root权限的操作
USER root


# 设置工作目录为/root，后续的操作将在该目录下进行
WORKDIR /root

# 使用tail -f /dev/null命令让容器保持运行状态，可用于在容器启动后进行后续的调试或其他操作（例如通过docker exec进入容器后进行操作）
CMD tail -f /dev/null