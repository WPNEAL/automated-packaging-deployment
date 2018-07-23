@echo off
echo -----------删除上次打的war包 -----------
del E:\放测试代码\hk.Server.war 
del E:\放测试代码\ROOT.war

echo ----------- 重定向到项目的根目录-----------
G:
cd G:\javaProjects\Test_Web_hk\hk.IServer 

echo ----------- 执行maven的清除，编译，打包命令-----------
call mvn clean    
call mvn compile
call mvn package
call mvn install
cd G:\javaProjects\Test_Web_hk\hk.Server 
call mvn clean 
call mvn compile
call mvn package
call mvn install
cd G:\javaProjects\Test_Web_hk\hk.web 
call mvn clean 
call mvn compile
call mvn package
call mvn install

echo ----------- 将代码复制到另一个目录，配合上面的del命令，用来确保此war包是新打出来-----------
copy G:\javaProjects\Test_Web_hk\hk.Server\target\hk.Server.war   E:\放测试代码 
copy G:\javaProjects\Test_Web_hk\hk.web\target\ROOT.war   E:\放测试代码

echo -----------重定向到WinSCP的根目录 -----------
D:
cd D:\software\WinSCP 

echo -----------执行winscp.bat脚本-----------
winSCP.com /script=E:\放测试代码\winscp.bat 


Pause