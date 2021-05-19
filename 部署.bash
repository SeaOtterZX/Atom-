项目存放目录:
/home/mro

查看端口:
ss -ntlp
lsof -i: (端口)

杀死进程
kill -9 (SID)

CRRC_YONGJI_mro_515

1.eureka:
nohup java -Xmx72m -Xms72m -jar eureka-0.0.1-SNAPSHOT.jar &

2.auth     :11000
nohup java -jar ace-auth.jar --spring.profiles.active=yj &
nohup java -jar ace-auth.jar --spring.profiles.active=pro &

3.admin   :11001
nohup java -jar ace-admin.jar --spring.profiles.active=yj &
nohup java -jar ace-admin.jar --spring.profiles.active=pro &

4.gateway   :10000
nohup java -jar gateway-0.0.1-SNAPSHOT.jar --spring.profiles.active=yj &
nohup java -jar gateway-0.0.1-SNAPSHOT.jar --spring.profiles.active=pro &

5.dict     :8003
nohup java -Xmx250m -Xms250m -jar  gxhs-dict-1.0-SNAPSHOT.jar --spring.profiles.active=yj &
nohup java -jar  gxhs-dict-1.0-SNAPSHOT.jar --spring.profiles.active=pro &

6.base   :12000
nohup java -jar  yj-base-view-1.0-SNAPSHOT.jar --spring.profiles.active=yj &
nohup java -jar  yj-base-view-1.0-SNAPSHOT.jar --spring.profiles.active=pro &

7.server   :8010
nohup java -jar  yj-server-1.0-SNAPSHOT.jar --spring.profiles.active=yj &
nohup java -jar  yj-server-1.0-SNAPSHOT.jar --spring.profiles.active=pro &

8.app	   :8011
nohup java -Xms300m -Xmx300m -jar  yj-app-1.0-SNAPSHOT.jar --spring.profiles.active=yj &
nohup java -Xms300m -Xmx300m -jar  yj-app-1.0-SNAPSHOT.jar --spring.profiles.active=pro &

9.xxl-job   :8087
nohup java -Xmx512m -Xms512m -jar xxl-job-admin-2.1.0.jar --spring.profiles.active=yj &

10.ahl      :8004
nohup java -jar  gxhs-ahl-1.0-SNAPSHOT.jar --spring.profiles.active=yj &
nohup java -jar  gxhs-ahl-1.0-SNAPSHOT.jar --spring.profiles.active=pro &

11:interface :8111
nohup java -jar yj-interface-1.0-SNAPSHOT.jar --spring.profiles.active=yj &
nohup java -jar yj-interface-1.0-SNAPSHOT.jar --spring.profiles.active=pro &




压缩包tar.gz安装

上传文件到linux下

准备工作：
    命令：getconf LONG_BIT   验证操作系统位数

创建： /usr/local/mysql
解压文件：# tar zxvf  mariadb-5.5.31-linux-x86_64.tar.gz
将解压的文件移动到：# mv mariadb-5.5.31-linux-x86_64 /usr/local/mysql

命令启动MariaDB 服务：service mysql start

nohup java -jar gxhs-zh-1.0-SNAPSHOT.jar --spring.profiles.active=zh &
nohup java -jar gxhs-zh-1.0-SNAPSHOT.jar --spring.profiles.active=dev &
nohup java -jar gxhs-zh-1.0-SNAPSHOT.jar --spring.profiles.active=ora &
//10.73.73.20

wms/csi/materielInstances/listByPage?pageSize=10&pageNo=1&materielCode=C1100600402
/wms/csi/materielInstances/viewCheckTtem/C1100600402


mv gxhs-zh-1.0-SNAPSHOT.jar /root/mrojar/cd/gxhs-zh-1.0-SNAPSHOT.jar.0330.bak

# 这是发布命令
nohup java -jar gxhs-zh-1.0-SNAPSHOT.jar --spring.profiles.active=mariadb &
nohup java -jar gxhs-zh-1.0-SNAPSHOT.jar --spring.profiles.active=mysql &
nohup java -jar gxhs-zh-1.0-SNAPSHOT.jar --spring.profiles.active=pro &
nohup java -jar gxhs-zh-1.0-SNAPSHOT.jar --spring.profiles.active=test &

# 这是导出数据库命令
mysqldump -u root -p oracle_to_mariadb > /usr/local/files/export.0413.sql

# mvn命令
mvn install:install-file -Dfile=D:/Work_ZC_mariadb/gxhs-zh/src/main/resources/lib/jasperreports-5.6.0.jar -DgroupId=net.sf.jasperreports  -DartifactId=jasperreports  -Dversion=5.6.0 -Dpackaging=jar
