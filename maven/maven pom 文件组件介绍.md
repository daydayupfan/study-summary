**pom 组件介绍 详细的都在 http://maven.apache.org/pom.html**

##modelVersion
maven的模型版本，跟随maven定义，一般不能修改。

##groupId
项目的组织，一般是顶级域名名称＋公司或者组织名称，如alibaba的项目组织为com.alibaba，如果你们公司的域名为www.abc.com，那你们的项目组织最好就以com.abc命名。

##artifactId
项目的名称，也是项目之间引进依赖的重要标识。像alibaba有个dubbo项目，dubbo项目可能又关联了许多子项目，所以artifactId就会定义有dubbo、dubbo-config这样的工程。

##version
项目的版本，项目迭代开发，可能经历许多个版本，靠这个定义，默认是打包的组成部分，如dubbo-2.8.4.jar。另外，版本有两个概念，0.0.1-SNAPSHOT这样的是快照版本，0.0.1-RELEASE或者不带SNAPSHOT的就是RELEASE版本。

##packaging
打包类型，有这几种类型：pom, jar, maven-plugin, ejb, war, ear, rar, par，默认不填就是jar包，一般常用的是pom、jar、war。

##properties
配置公共属性，如spring-web,spring-aop你要依赖这两个，它们肯定是同一个版本的如4.5.0，可以把版本号放在属性上统一管理，也方便维护。

##dependencies
下载并链接对编译以及其他需要它们的目标的依赖关系。下载依赖jar
作为额外的好处，Maven引入了这些依赖项的依赖项（可传递依赖项），
允许您的列表只关注项目所需的依赖项。


建议和反馈
前往百度翻译

##dependencyManagement
可以在一个中心位置设置依赖项详细信息，该位置会传播到所有继承的pom,但不会加载实际依赖到项目中













