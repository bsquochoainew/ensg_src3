@echo off
SET /P chaytu=[chaytu: FROM]
SET /P chayden=[chayden: END]
SET /P project=[project: project name]
set sohientai=%chaytu%
echo # bsquochoai.ga Hoc nha van ba dao tai av.bsquochoai.com >> README.md
git init
:looplai

git add README.md
git commit -m "Tran Quoc Hoai"
git remote rm origin
git remote add origin https://github.com/bsquochoainew/%project%%sohientai%.git
git push -u origin master

git checkout -b bsquochoai
git add .
git commit -m "Tran Quoc Hoai ba cai xi dao"
git push -u origin bsquochoai

if "%sohientai%" == "%chayden%" goto end 
set /a "sohientai+=1"
goto looplai
:end
echo "XONG!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
pause