option confirm off
echo -----------连接服务器 root是账号名，vito@202是密码，192.168.1.202是服务器地址-------------
open sftp://root:vito@202@192.168.1.202/  

echo -----------kill掉/usr/local/tomcat此tomcat的进程 -----------
call ps -ef | grep /usr/local/tomcat/conf | grep -v grep | cut -c 9-15|xargs kill -s 9 

echo -----------删除webapps中上次上传的ROOT.war,hk.Server.war-----------
call rm -f /usr/local/tomcat/webapps/ROOT.war 
call rm -f /usr/local/tomcat/webapps/hk.Server.war

echo -----------删除webapps中ROOT，hk.Server 目录 -----------
call rm -rf /usr/local/tomcat/webapps/ROOT 
call rm -rf /usr/local/tomcat/webapps/hk.Server 

echo -----------上传ROOT.war,hk.Server.war到wabapps目录下-----------
put E:\放测试代码\hk.Server.war /usr/local/tomcat/webapps/ 
put E:\放测试代码\ROOT.war /usr/local/tomcat/webapps/

echo -----------启动tomcat-----------
call /usr/local/tomcat/bin/startup.sh  

close
exit
pause