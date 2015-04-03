SET /P chaytu=[chaytu: Chay tu so may]
SET /P chayden=[chayden: Chay den so may]
set sohientai = %chaytu%
:looplai


if "%sohientai%" == chayden+1 goto end 
set /a "sohientai+=1"
goto looplai
:end
pause