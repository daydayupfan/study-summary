#sonarqube 搭配mysql5.6
 --创建用户
 CREATE USER 'sonar'@'%' IDENTIFIED BY 'password';
 CREATE USER 'sonar'@'localhost' IDENTIFIED BY 'password';
 --授权
 GRANT ALL privileges ON *.* TO 'sonar'@'localhost';
 GRANT ALL privileges ON *.* TO 'sonar'@'%';
 --设置与修改密码
 SET PASSWORD FOR 'sonar'@'localhost' = PASSWORD('sonar');
 SET PASSWORD FOR 'sonar'@'%' = PASSWORD('sonar');
 CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci;
 
 --目前最适合的编码是 UTF-8mb4
 
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