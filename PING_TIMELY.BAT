@ECHO OFF
TITLE 每隔5分钟PING百度

:RUN_ONCE
ECHO %DATE% %TIME%
ECHO %DATE% %TIME% >>ping_%date:~0,4%%date:~5,2%%date:~8,2%.txt
ping www.baidu.com >>ping_%date:~0,4%%date:~5,2%%date:~8,2%.txt

CSCRIPT /B wait_no_prompt.js 5000

GOTO RUN_ONCE