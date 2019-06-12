# 俱乐部维护系统
## 技术使用（除用户模块外都是用到了如下技术）
* jdk1.8
* mysql
* mybatis/mybatis-plus
* zookeeper-3.4.12
* kafka_2.12-2.1.1
* jsp
* jquery
* ajax
## 功能模块
### 用户模块
    控制层接口类com.club.user.club.web.UserController
    业务层com.club.user.club.service.UserService
    对象映射层com.club.user.club.domain.User
### 资格模块（内含申请和审批）
    控制层接口类com.club.user.club.web.UserPowerController
    业务层-kafka生产者com.club.user.club.service.UserPowerService
    业务层-kafka消费者com.club.user.club.service.UserPowerServiceConsumer
    对象映射层com.club.user.club.domain.UserPower
### 私人培训班模块（内含申请和审批）
    控制层接口类com.club.user.club.web.UserCourseController
    业务层-kafka生产者com.club.user.club.service.UserCourseService
    业务层-kafka消费者com.club.user.club.service.UserCourseServiceConsumer
    对象映射层com.club.user.club.domain.UserCourse
##目录结构
### java
##### core
    核心架构类
##### club
    业务需求实现包
    --domain    
        映射包，与数据库一一对应。
    --dto
        映射包，与前端需求一一对应。
    --persistence
        数据库查询接口包，使用mybatis对数据库进行操作。
    --service
        业务逻辑包，把复杂业务拆分，并实现。
    --web
        接口包，对外界提供功能的访问接口，控制传输。
### resources
##### static
    保存静态文件，css，js，图片。
##### application.yml
    配置文件，用来配置端口，mybatis，数据源，kafka等。
### webapp
##### WEB-INF
    保存所有页面