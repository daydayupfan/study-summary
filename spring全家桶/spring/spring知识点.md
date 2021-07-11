 1、@Autowired、 @Resource、 @Qualifier、@Primary的区别
 ```
Autowired:spring自带的注解，与Qualifier
Qualifier：spring自带的注解，指定注入的名称
Primary:spring自带的注解，多个接口实现类的情况，使用此注解表示默认加载
Resource：JDK1.6加入的注解，可以与spring解耦，先通过名字（byNmae）查找或name属性进行指定，找不到再通过byType进行查找，
 ```

2、AOP

Pointcut:
任何的public方法:execution(public * *(..))
以set开始的方法:execution(* set*(..))
定义在cn.freemethod.business.pack.Say接口中的方法:execution(* cn.freemethod.business.pack.Say.*(..))
任何cn.freemethod.business包中的方法:execution(* cn.freemethod.business.*.*(..))
任何定义在com.xyz.service包或者其子包中的方法:execution(* cn.freemethod.business..*.*(..))
其他表达式
任何在com.xyz.service包中的方法:within(com.xyz.service.*)
任何定义在com.xyz.service包或者其子包中的方法:within(com.xyz.service..*)
任何实现了com.xyz.service.AccountService接口中的方法:this(com.xyz.service.AccountService)
任何目标对象实现了com.xyz.service.AccountService的方法:target(com.xyz.service.AccountService)
一般情况下代理类(Proxy)和目标类(Target)都实现了相同的接口，所以上面的2个基本是等效的。

有且只有一个Serializable参数的方法
args(java.io.Serializable)
只要这个参数实现了java.io.Serializable接口就可以，不管是java.io.Serializable还是Integer，还是String都可以。

目标(target)使用了@Transactional注解的方法:@target(org.springframework.transaction.annotation.Transactional)
目标类(target)如果有Transactional注解中的所有方法:@within(org.springframework.transaction.annotation.Transactional)
任何方法有Transactional注解的方法:@annotation(org.springframework.transaction.annotation.Transactional)
有且仅有一个参数并且参数上类型上有Transactional注解:@args(org.springframework.transaction.annotation.Transactional)
注意是参数类型上有Transactional注解，而不是方法的参数上有注解。

bean(name):bean名称为name的类中所有的方法
bean名字能匹配:bean(*Impl)

3、IOC(控制反转) 、DI(依赖注入)
IOC:将类的生命周期都交给是spring进行管理
DI:组件之间依赖关系由容器在运行期决定 
```
set注入、构造器注入、接口注入Autowired
```


4、 spring 如何解决循环依赖问题
三级缓存
singletonObjects 主要存放的是单例对象，属于第一级缓存；
earlySingletonObjects经过了实例化尚未初始化的对象，属于第二级缓存
singletonFactories属于单例工厂对象，属于第三级缓存；
Spring首先从singletonObjects中尝试获取，如果获取不到并且对象在创建中，
则尝试从earlySingletonObjects中获取，如果还是获取不到并且允许从singletonFactories通过getObject获取，
则通过singletonFactory.getObject()获取。如果获取到了则移除对应的singletonFactory,
将singletonObject放入到earlySingletonObjects，其实就是将三级缓存提升到二级缓存,这个就是缓存升级。
spring在进行对象创建的时候，会依次从一级、二级、三级缓存中寻找对象，如果找到直接返回。
由于是初次创建，只能从第三级缓存中找到(实例化阶段放入进去的)，
创建完实例，然后将缓存放到第一级缓存中。下次循环依赖的再直接从一级缓存中就可以拿到实例对象了

5、beanFactory与 factoryBean的区别
```
BeanFactory：是IOC容器的核心接口，它的职责包括：实例化、定位、配置应用程序中的对象及建立这些对象间的依赖;
它和ApplicationContext就是spring框架的两个IOC容器，现在一般使用ApplicationnContext，其不但包含了BeanFactory的作用，
同时还进行更多的扩展，使用级别比beanFactory高

FactoryBean：也是接口，在bean实例化加上了简单工厂与装饰模式当实例化Bean过程比较复杂，定制实例化Bean的逻辑才是上策。
```

6、spring refresh()方法流程
springboot 加载中最重要的也是此方法，其中onRefresh方法会进行createWebServer进行web服务器初始与启动

7、spring bean 生命周期
```
bean的实例化–>bean的初始化–>bean的使用–>bean的销毁
1.实例化：也就是new一个对象
2.属性注入：Spring上下文对实例化的bean进行配置（IOC注入）
3.设置beanId：如果实现BeanNameAware接口，调用setBeanName()方法设置ID
4.调用BeanFactoryAware.setBeanFactory(setBeanFactory(BeanFactory)：可以用这个方式来获取其它Bean，只需在Spring配置文件中配置一个普通的Bean就可以；
5.调用ApplicationContextAware.setApplicationContext(ApplicationContext)：与BeanFactoryAware.setBeanFactory同样作用，但是ApplicationContextAware是子接口，可以实现更多接口；
6.实例化之前调用：BeanPostProcessor.postProcessBeforeInitialization(Object obj, String s)方法调用，
7.实例化：如果在spring配置中还配置了init-method属性，会自动调用该方法；
8.实质化之后调用：如果关联BeanPostProcessor接口，调用postProcessAfterInitialization(Object obj, String s)方法，
9.注：前面这里我们就完成bean的实例化；
10.bean的销毁：当bean不再被使用时，就会调用destroy()方法；
11.bean销毁调用方法：如果配置了destroy-method方法，会自动调用该方法；
```
![](D:\myIdeaProject\mystudy\studysummary\spring全家桶\spring\images\spring bean生命周期.png)

8、springboot 自动装配 
1）自动装配还是利用了 SpringFactoriesLoader 来加载META-INF/spring.factoires文件里所有配置的EnableAutoConfgruation，
它会经过exclude和filter等操作，最终确定要装配的类
2)  处理@Configuration的核心还是ConfigurationClassPostProcessor，这个类实现了BeanFactoryPostProcessor, 
因此当AbstractApplicationContext执行refresh方法里的invokeBeanFactoryPostProcessors(beanFactory)方法时会执行自动装配
