# 项目学习文档

# 一、前言
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
upstream heima-app-gateway{
    server localhost:51601;
}

server{
    listen 8001;
    location / {
        root  E:/VSCode_Projects/leadnews-frontend/app-web
        index index.html
    }
    
    location ~/app/(.*) {
        proxy_pass http://heima-app-gateway/$1;
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
#user  nobody;
worker_processes  1;

events {
    worker_connections  1024;
}
http {
    include       mime.types;
    default_type  application/octet-stream;
    sendfile        on;
    keepalive_timeout  65;
	# 引入自定义配置文件
	include leadnews.conf/*.conf;
}
```

④ ：启动nginx

 在nginx安装包中使用命令提示符打开，输入命令nginx启动项目

 可查看进程，检查nginx是否启动

 重新加载配置文件：`nginx -s reload`

⑤：打开前端项目进行测试  -- >  http://localhost:8801

 用谷歌浏览器打开，调试移动端模式进行访问

