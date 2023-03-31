@echo off 
title Local Administrator creator ©made by dor©
color a
set /p localuser="local user name = "
set /p localuserpass="local user pass = "

echo "creating %local user%"
net user %localuser% /ACTIVE:yes
net user %localuser% %localuserpass% /y /add /PASSWORDREQ:NO /PASSWORDCHG:NO
WMIC USERACCOUNT WHERE Name='%localuser%' SET PasswordExpires=false
net localgroup administrators %localuser% /add
echo "finish creating %local user%"

echo "creating %local user%1"
net user %localuser%1 /active:yes
net user %localuser%1 %localuserpass% /y /add /PASSWORDREQ:NO /PASSWORDCHG:NO
WMIC USERACCOUNT WHERE Name='%localuser%1' SET PasswordExpires=false
net localgroup administrators %localuser%1 /add
echo "finish creating %local user%1"

echo "creating %local user%2"
net user %localuser%2 /active:yes
net user %localuser%2 %localuserpass% /y /add /PASSWORDREQ:NO /PASSWORDCHG:NO
WMIC USERACCOUNT WHERE Name='%localuser%2' SET PasswordExpires=false
net localgroup administrators %localuser%2 /add
echo "finish creating %local user%"
echo.
echo Finished operation.
timeout 5
