@echo off

REM Grab current working directory
SET vmupdate_path=%cd%

REM Stop NGINX if already exists and running
REM cd \nginx
REM nginx.exe -s quit
REM cd %vmupdate_path%

REM Remove any remains of a previous NorthWind model if such existed
REM rmdir /Q /S C:\HOL-TM1SDK\models\NorthWind

REM Make sure all TM1 Servers are stopped to be able to patch the TM1Server installation as well as models
REM net stop "IBM Cognos TM1 Server - Planning Sample"
REM net stop "IBM Cognos TM1 Admin Server x64"

REM Update the VM
xcopy .\files\* c:\* /s /y

REM Start the TM1 Servers we need for the lab
REM net start "IBM Cognos TM1 Admin Server x64"
REM net start "IBM Cognos TM1 Server - Planning Sample"

REM Start NGINX again so the student doesn't need to do so
REM cd \nginx
REM start nginx.exe

cd %vmupdate_path%
