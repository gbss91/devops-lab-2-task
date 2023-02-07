#! /bin/bash

# delete fol_1 & fol_2 when starting
rm -rf fol_1 fol_2

#create folders 
mkdir fol_1 fol_2

#create files in fol_1
touch fol_1/1_1.txt  fol_1/1_2.txt  fol_1/1_3.txt
chmod 700 fol_1/*_1.txt  fol_1/*_3.txt
chmod 777 fol_1/*_2.txt

#create files in fol_2
touch fol_2/2_1.txt  fol_2/2_2.txt  fol_2/2_3.txt
chmod 700 fol_2/*_1.txt  fol_2/*_3.txt
chmod 777 fol_2/*_2.txt

#Create Github repo and push changes
echo "# devops-lab-2-task" >> README.md
git init
git add . 
git commit -m "week 2 Lab: Creating  a new git project on GitHub and commit and push your files to GitHub from your terminal"
git branch -M main
git remote add origin git@github.com:gbss91/devops-lab-2-task.git
git push -u origin main

echo "Job Completed"

