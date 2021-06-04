########################### git本地仓库的初始化及提交 start #####################

#初始化 再本地创建暂存区
git init

#查看仓库状态 
git status

#将文件添加到暂存区
git add .

#提交文件到暂存区
git commit -m "注释"

#添加远程仓库地址 与本地仓库进行关联
git remote add origin https://github.com/daydayupfan/mystudy.git

#(可以不用此操作也可以)执行完这步需要重新添加提交README.md文件 （暂时不知道原因）
git pull origin master --allow-unrelated-histories
#由于新建的远程仓库是空的，所以要加上-u这个参数 远程仓库有内容之后 就可以去掉参数-u
git push -u origin master 
#正常操作是用这步
git pull origin master
#上传代码到远程仓库
git push origin master

########################### git本地仓库的初始化及提交 end #####################

################################ 常用命令 ######################################

#删除远程文件filename
git rm --cached filename
git commit -m "delete remote file filename "
git push -u oringin master(此处是当前分支的名字)

#删除远程文件夹directoryname
git rm -r --cached directoryname
git commit -m "delete remote directory directoryname "
git push -u oringin master(此处是当前分支的名字)

# 新建分支 并跳转到新分支
git checkout -b newbranchName(新分支名字)

#创建远程分支
#加上这句为了解决 OpenSSL SSL_read: SSL_ERROR_SYSCALL, errno 10054
git config http.sslVerify "false"
# 上传至远程分支（没有会自动创建）
git push origin 本地分支名:远程分支名

#删除远程分支
git push origin :dbg_lichen_star（本地）
git push origin --delete dbg_lichen_star（远程分支名）
git push origin 远程分支名:本地分支名

#删除分支
git branch -d/D（强制） branchname

#撤销commit，保留git add
git reset --soft HEAD^

#删除工作空间改动代码，撤销commit，撤销git add . 
git reset --hard HEAD^

#不删除工作空间改动代码，撤销commit，并且撤销git add .
git reset --mixed HEAD^ 效果与git reset HEAD^ 一致

#推送到远程分支
git push -f

#修改提交的注释
git commit --amend

#只撤销git add，此时会保留本地修改
git reset HEAD filename

#修改config url参数格式 避免每次都需要输入用户名密码
https://username:password@github.com/username/project.git 
#默认config url参数格式
https://github.com/username/project.git 

#解决认证失败问题
git config --system --unset credential.helper

#查看用户名和邮箱地址：
git config user.name/user.email

#修改项目用户名和邮箱地址 (区分开不同项目不同账号)
git config  user.name  "xxxx"
git config  user.email  "xxxx"


#修改所有项目用户名和邮箱地址 （不建议使用）
git config --global user.name  "xxxx"
git config --global user.email  "xxxx"


#合并分支到master
git checkout master
git merge dev

#可以查看命令历史，包含提交的commit id
git reflog     

error: You have not concluded your merge (MERGE_HEAD exists).的原因可能是在以前pull下来的代码自动合并失败
解决办法一:保留本地的更改,中止合并->重新合并->重新拉取
$:git merge --abort
$:git reset --merge
$:git pull