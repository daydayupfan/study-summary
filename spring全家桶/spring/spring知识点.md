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