ECHO OFF
TITLE 每隔1小时检查tomcat服务
CLS

SET SCRIPT_PATH = C:\TEST\

:RUN_ONCE
ECHO %DATE% %TIME%

TASKLIST /FI "IMAGENAME eq java.exe" /NH |FIND "java" ||START C:\TEST\START_TOMCAT.bat

CSCRIPT /B wait_no_prompt.js 3600

GOTO RUN_ONCE