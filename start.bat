@echo off
echo -----------ɾ���ϴδ��war�� -----------
del E:\�Ų��Դ���\hk.Server.war 
del E:\�Ų��Դ���\ROOT.war

echo ----------- �ض�����Ŀ�ĸ�Ŀ¼-----------
G:
cd G:\javaProjects\Test_Web_hk\hk.IServer 

echo ----------- ִ��maven����������룬�������-----------
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

echo ----------- �����븴�Ƶ���һ��Ŀ¼����������del�������ȷ����war�����´����-----------
copy G:\javaProjects\Test_Web_hk\hk.Server\target\hk.Server.war   E:\�Ų��Դ��� 
copy G:\javaProjects\Test_Web_hk\hk.web\target\ROOT.war   E:\�Ų��Դ���

echo -----------�ض���WinSCP�ĸ�Ŀ¼ -----------
D:
cd D:\software\WinSCP 

echo -----------ִ��winscp.bat�ű�-----------
winSCP.com /script=E:\�Ų��Դ���\winscp.bat 


Pause