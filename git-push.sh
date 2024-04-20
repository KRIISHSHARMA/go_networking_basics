echo "Enter your message"
read message

git add .
git commit -m"${message}"

if [ -n "$(git status --porcelain)" ]; then
    echo "IT IS CLEAN"
else
    git status
    echo "Enter your GitHub URL"
    read github_url
    git remote add origin $github_url
    echo "Pushing data to the remote server!!!"
    git push -u origin master
fi

