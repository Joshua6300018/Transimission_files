@ECHO OFF

ECHO Start

::���o�妸�ɩҦb�����|�W�@�h
SET BatchPATH=%~DP0
SET CompilerPath="C:\ProgramData\Anaconda3\python"

ECHO #######  ���J��Ѹ�� #######

::PC_ratio
ECHO Put-Call ratio...
%CompilerPath% %BatchPATH%\scripts\py_version\PC_ratio_Crawler.py recent %BatchPATH% 
REM %CompilerPath% %BatchPATH%\scripts\py_version\PC_ratio_Crawler.py all %BatchPATH% 

::�T�j�k�H
REM ECHO �j�p�x(�T�j�k�H)...
REM %CompilerPath% %BatchPATH%\scripts\py_version\Big3_Crawler.py TXF %BatchPATH%
REM %CompilerPath% %BatchPATH%\scripts\py_version\Big3_Crawler.py MXF %BatchPATH%

::���㫴����T(�̨������})
REM ECHO �j�p�x(�`OI)
REM %CompilerPath% %BatchPATH%\scripts\py_version\Single_Contract_Crawler.py TX %BatchPATH%
REM %CompilerPath% %BatchPATH%\scripts\py_version\Single_Contract_Crawler.py MTX %BatchPATH%

REM ::������s�ɭn�}�U��
REM %CompilerPath% %BatchPATH%\scripts\py_version\Single_Contract_Crawler.py TX %BatchPATH% all
REM %CompilerPath% %BatchPATH%\scripts\py_version\Single_Contract_Crawler.py MTX %BatchPATH% all

REM ECHO #######  �X�־��v��ƻP�s��� #######

::�X�֤T�j�k�H...
::for /f %%i in ('%CompilerPath% %BatchPATH%mergeBig3.r %BatchPATH%') do set Big3=%%i
::if %Big3% == success_yesToday(Big3) ECHO ^  Merge Big3 Completed @@@~~~
::if %Big3% == success_noToday(Big3) ECHO ^  No today @@@~~~

::�X�֥����s�¸��
REM for /f %%i in ('%CompilerPath% %BatchPATH%\scripts\py_version\mergeAll.py %BatchPATH%') do set All=%%i
REM if %All% == success_yesToday(All) ECHO ^  Merge All Completed @@@~~~
REM if %All% == success_noToday(All) ECHO ^  No today @@@~~~

REM ECHO #######  �ˬd��ƬO�_���T + ��Xlog #######

::�]�w��Ѥ��
REM SET DT=%DATE% %TIME% 

REM ECHO %DT%  %Big3% >> log\log.txt
REM ECHO %DT%  %All% >> log\log.txt

	
ECHO Finish

pause