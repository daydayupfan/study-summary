1、创建项目6
2、在项目目录打开 git bash here
3、git init  将项目交给git 进行管理
4、git add . 添加所有文件
5、git commit -m "注释" 提交代码到本地仓库
6、在git 创建远程仓库 记录下仓库地址
7、git remote add origin 仓库地址  将本地仓库与远程仓库进行关联
8、git push -u origin master  由于新建的远程仓库是空的，
所以要加上-u这个参数 远程仓库有内容之后 就可以去掉参数-u
9、git pull --rebase origin master 这步是在远程仓库创建的时候勾选了生成README文件选项
需要先进行合并 之后再进行git push origin master就完成了