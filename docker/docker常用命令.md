#########################################################################
docker [options] --help 要经常使用

#查询docker hub中 该服务名有哪些镜像
docker search trem(服务名称)例子：docker search tomcat

#docker 进入容器内部进行操作
dockers exec -it 容器名/容器id redis-cli -h localhost/ip -p 端口（容器）--raw（避免中文乱码）


#启动mysql服务
 docker run -d  -p 3306:3306 --name Mysql  -e MYSQL_ROOT_PASSWORD=123456  mysql:5.6
 docker exec -it Mysql bash
 #查看用户信息
 select host,user,plugin,authentication_string from mysql.user;
 --创建用户
 CREATE USER 'docker_mysql'@'%' IDENTIFIED BY 'password';
 CREATE USER 'docker_mysql'@'localhost' IDENTIFIED BY 'password';
 --授权
 GRANT ALL privileges ON *.* TO 'docker_mysql'@'localhost';
 GRANT ALL privileges ON *.* TO 'docker_mysql'@'%';
 --设置与修改密码
 SET PASSWORD FOR 'docker_mysql'@'localhost' = PASSWORD('123456');
 SET PASSWORD FOR 'docker_mysql'@'%' = PASSWORD('123456');
 --删除用户
 drop user 'docker_mysql'@'localhost';
 drop user 'docker_mysql'@'%';



#记得建数据库  sonarqube默认登录账号密码 admin/admin
docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 --link=Mysql:mysql
-e SONARQUBE_JDBC_USERNAME=sonar -e SONARQUBE_JDBC_PASSWORD=sonar
-e SONARQUBE_JDBC_URL="jdbc:mysql://192.168.18.2:3306/sonar?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true&useConfigs=maxPerformance&useSSL=false"
sonarqube:6.7.7-community


#docker 镜像容器 配置存在位置/var/lib/docker
#将系统中的文件复制到docker容器指定目录中
docker cp 宿主机文件路径  镜像名称:镜像中文件存放路径
docker cp /user/zhouf/checkstyle-sonar-plugin-4.21.jar sonarqube:/opt/*/*


#服务第一次启动之后 可使用该命令启动
docker start 容器名/容器id

#停止服务
docker stop/kill 容器名/容器id

#删除
-f:强制删除正在运行的容器
-l:移除容器间的网络连接，而非容器本身
-v:删除与容器关联的卷
docker rm -f/-l/-v 容器名/容器id

#容器 暂停/重新启用 服务
docker pause/unpause 容器名/容器id

#导出镜像到指定位置  > -o 表示输入文件
docker save imagesid > 文件路径
docker save 63130206b0fa > d:\docker\redis.tar
docker save  63130206b0fa > d:\docker\redis.tar
docker save -o d:\docker\redis.tar.gz redis:5.0.5

#导入镜像到docker
docker load < 文件路径
docker load < d:\docker\redis.tar
docker load -i d:\docker\redis.tar.gz

#修改镜像名称
docker tag imagesid  重命名名称:版本号
docker tag 63130206b0fa redis:5.0.5


#较快的镜像仓库
 "https://registry.docker-cn.com",
 "http://hub-mirror.c.163.com",
 "https://registry.docker-cn.com"