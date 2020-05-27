# node镜像的版本
# 更多版本 https://hub.docker.com/_/node
NODE_VERSION=registry.cn-beijing.aliyuncs.com/rdisme/node:14.3.1
# 容器名称，用于防止多容器名字冲突
CONTAINER_NAME=mynode
# 需要挂载的本地目录
HOST_SRC=${PWD}/apps
# 挂载容器的目录
CONTAINER_DEST=/apps
# 注意！！！！
# 下面的命令中 -p参数，是用来指定端口映射关系的
# 比如 npm run dev 此时的端口，需要映射到容器外部才能访问


run:
	@echo "node version is: "${NODE_VERSION}
	@echo "container name is: "${CONTAINER_NAME}
	@echo "host path is: "${HOST_SRC}
	@echo "===============执行命令===================="
	docker run -it -d \
		-v ${HOST_SRC}:${CONTAINER_DEST} \
		-w ${CONTAINER_DEST} \
		-p 8080:8080 \
		--rm \
		--name ${CONTAINER_NAME} ${NODE_VERSION}