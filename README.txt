此脚本为一键打war包并上传到服务器然后重启tomcat的脚本
------------------------------------------------------------------------------------
使用前需要安装的软件 maven(并配置环境变量)，winscp(用来上传并执行linux命令)
------------------------------------------------------------------------------------
项目打包.bat为单独的maven打包脚本
调用winscp.bat为单独的调用'winscp.bat'的脚本
这两个脚本可单独运行，用来测试打包和上传重启配置是否成功
------------------------------------------------------------------------------------
start.bat是将项目打包.bat和调用winscp.bat合并到一起的脚本，当上述2个脚本测试成功后，
可直接此脚本来一键打包上传重启
------------------------------------------------------------------------------------
使用主要是修改相关路径(脚本内有注释)