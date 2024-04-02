# create folder for git and cd to it
git init
# copy folder to above created folder
git add .
# git status to check if folders added
git status
# add remote origin 
git remote add origin https://github.com/Najih00/CICD_jenkins_ansible_k8.git
# commit
git commit -m "Initial commit"
#push to origin master
git push -u origin master
