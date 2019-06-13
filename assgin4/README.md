GYM DEMO
===========================
##功能总览
* 登录注册
* 跳转登录页面
* 发帖删帖

##项目依赖
* JDK:1.8
* Maven:4.0.0
* Spring Boot:2.1.4
* MySQL:5.7.20
* Redis:3.2.100
* MongoDB:4.0

##技术总览
* jpa
    * 使用jpa标准接口默认hibernate框架实现数据库建表和存储
* security
    * 使用spring security拦截未认证请求
    * 密码加密后入库
    * 多角色权限管理
* api versioning
    * 对post路径下的api进行版本控制
* swagger documenting
    * 对post的api2.0版本建立swagger文档页面
* rate limiting
    * 对post的创建请求进行每秒上限为3的限流
* cache
    * 实现spring cache连接windows redis对请求结果进行缓存
* web flux
    * 对post的api3.0版本使用非阻塞式实现
* reactive mongo
    * 实现响应式持久层
    
##

##小组人员

|姓名|学号|
|---|---|
|迟成|16301001|
|潘雅欣|16301014|
|沈晓宇|16301017|