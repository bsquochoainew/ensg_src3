SET /P chaytu=[chaytu: Chay tu so may]
SET /P chayden=[chayden: Chay den so may]
set /a
echo # bsquochoai.ga Hoc nha van ba dao tai av.bsquochoai.com >> README.md
git init
:looplai

git add README.md
git commit -m "Tran Quoc Hoai"
git remote rm origin
git remote add origin https://github.com/bsquochoainew/ensg_src%sohientai%.git
git push -u origin master

git checkout -b bsquochoai
git add .
git commit -m "Tran Quoc Hoai ba cai xi dao"
git push -u origin bsquochoai

set /a "sohientai+=1"

goto looplai