# 项目学习文档

# 一、前言

> app端启动：localhost:8801
>
> 自媒体端启动：localhost:8002
>
> 管理员端启动：localhost:8003
>
>

## 1、Docker安装Nacos

步骤：

①docker拉取镜像

```cmd
docker pull nacos/nacos-server:1.2.0
```

②创建容器

```cmd
   docker run --env Mode=standalone --name nacos --restart=always -d -p 8848:8848 nacos/nacos-server:1.2.0
```

③访问地址

http://192.168.200.130:8848/nacos

# 二、初始化项目搭建

## 1、项目环境依赖

* jdk8
* maven-3.6.3
* git
* ideal

## 2、Nginx配置

本项目中使用nginx版本为:1.18.0

前端项目使用nginx代理发送请求：

步骤：

①在nginx的conf目录下新建一个文件夹`leadnews.conf`，在该文件夹中新建`heima-leadnews-app.conf`文件

``` js
upstream qrh-app-gateway{
    server localhost:51601;
}

server{
    listen 8001;
    location / {
        root  E:/VSCode_Projects/leadnews-frontend/app-web
        index index.html
    }
    
    location ~/app/(.*) {
        proxy_pass http://qrh-app-gateway/$1;
        proxy_set_header Host $host; #不改变源请求头的值
        proxy_pass_request_body on; #开启获取请求体
        proxy_pass_request_headers on; #开启获取请求头
        proxy_set_header X-Real-IP $remote_addr; #记录真实发出请求的客户端ip
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for; #记录代理信息
    }
}
```

②将nginx.conf文件内容清空，替换为下面内容：

```js
#user
nobody;
worker_processes
1;

events
{
    worker_connections
    1024;
}
http
{
    include
    mime.types;
    default_type
    application / octet - stream;
    sendfile
    on;
    keepalive_timeout
    65;
    # 引入自定义配置文件
    include
    leadnews.conf/*.conf;
}
```

④ ：启动nginx

在nginx安装包中使用命令提示符打开，输入命令nginx启动项目

可查看进程，检查nginx是否启动

重新加载配置文件：`nginx -s reload`

⑤：打开前端项目进行测试 -- >  http://localhost:8801

用谷歌浏览器打开，调试移动端模式进行访问

# 三、Freemarker模板引擎

## 3.1 常用语法

1、注释

```jsp
<#-- 我是注释 -->
```

2、插值：用`${..}`部分，freemarker会用真实的值代替${..}

```jsp
    Hello ${name}
```

3、FTL指令：和HTML标记类似，名字前加`#`加以区分，freemarker会解析标签中的`表达式`或`逻辑`

```jsp
<# >FTL指令</#>
```

3、文本。进文本信息，这些不是freemarker的注释、插值、ftl指令的内容freemarker忽略解析，直接输出内容。

```jsp
我是单纯的纯文本
```

## 3.2 指令语法

### 3.3.1  list

指令格式：`<#list></#list>`

用法：

```jsp
<#-- stus是数据源 ， stu是迭代变量 -->
<#list stus as stu>
    <tr>
        <td>${stu_index+1}</td>
        <td>${stu.name}</td>
        <td>${stu.age}</td>
        <td>${stu.money}</td>
    </tr>
</#list>
```

注：在迭代变量名后面加`_index`用于获取`下标值`，默认从0开始

### 3.3.2  map

获取map集合中的元素值有两种方式：

`map.keyname.prop`或`map['keyname'].prop`

遍历map集合：

```jsp
<#-- ?keys 表示是获取stuMap中的所有key -->
<#list stuMap?keys as key>
    key:${key}----value:${stuMap[key]}
</#list>
```

### 3.3.3  if

if指令：`<#if></#if>`

```jsp
<# if stu.age==18>
    <p>18</p>
</#if>
```

### 3.3.4 运算符与比较运算符

空值处理，语法：`变量??`

```jsp
<#if stu.age??>
    <#list stus as stu>
        <p>${stu}</p>
    </#list> 
</#if>
```

缺失变量，格式`变量!替换值`

```jsp
<#--如果name值不存在或为空则用""空字符串替代-->
    <p>Hello ${name!""}</p>
```

### 3.3.5 内建函数

语法格式：`变量+？+函数名称`

```jsp
    <#--集合大小-->
    <p>${stuList?size}</p>
    
    <#--日期类-->
    <p>${mydate?date}</p>
     <p>${mydate?datetime}</p>
    
```

# 四、MinIO分布式文件存储

## 4.1 Docker内安装MinIO

①拉取镜像

```cmd
docker pull minio/minio
```

②创建容器

```cmd
docker run -p 9000:9000 --name minio -d --restart=always -e "MINIO_ACCESS_KEY=minio" -e "MINIO_SECRET_KEY=minio" -v /home/data:/data -v /home/config:/root/.minio minio/minio server /data
```

③访问地址
http://192.168.200.130:9000

访问账号密码：minio/minio123

## 4.2 快速入门

①创建一个`minio_demo`模块

②导入相关依赖

```xml

<dependencies>

    <dependency>
        <groupId>io.minio</groupId>
        <artifactId>minio</artifactId>
        <version>7.1.0</version>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-test</artifactId>
    </dependency>
</dependencies>
```

③创建测试类

```java
package com.itheima.minio.test;

/**
 * @author QRH
 * @date 2024/4/9 22:13
 * @description TODO
 */

import io.minio.MinioClient;
import io.minio.PutObjectArgs;

import java.io.FileInputStream;

public class MinioTest {


    public static void main(String[] args) {

        FileInputStream fileInputStream = null;
        try {

            fileInputStream = new FileInputStream("e:\\list.html");
            ;

            //1.创建minio链接客户端
            MinioClient minioClient = MinioClient.builder()
                    .credentials("minio", "minio123")
                    .endpoint("http://192.168.200.130:9000")
                    .build();
            //2.上传
            PutObjectArgs putObjectArgs = PutObjectArgs.builder()
                    .object("list.html")//文件名
                    .contentType("text/html")//文件类型
                    .bucket("leadnews")//桶名词  与minio创建的名词一致
                    .stream(fileInputStream, fileInputStream.available(), -1) //文件流
                    .build();
            minioClient.putObject(putObjectArgs);

            System.out.println("http://192.168.200.130:9000/leadnews/ak47.jpg");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}

```




