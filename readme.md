# docker nodejs 环境

> app ：项目目录，所有的前端代码需要在这个目录下完成

> Makefile ： node环境核心文件，请务必查看！！！

执行如下命令，启动docker容器
```
make run
```

若是本地没有make命令，只能执行：
```
docker run -it -d \
		-v ${HOST_SRC}:${CONTAINER_DEST} \
		-w ${CONTAINER_DEST} \
		-p 9527:9527 \
		--rm \
		--name ${CONTAINER_NAME} ${NODE_VERSION}
```

工作模式：
- 在app目录下更新代码
- 需要进入容器中执行 npm等一些列命令

进入容器命令（若是vs code编辑器，容器管理会更方便）
```
docker exec -it 容器名 /bin/bash
```