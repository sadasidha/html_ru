if [ $1 == push ]; then 
    _BRANCH=$(git branch --show-current)
    GIT_SSH_COMMAND="ssh -i ~/.ssh/id_ed25519_git_work -o IdentitiesOnly=yes" git push origin $_BRANCH
elif [ $1 == pull ]; then 
    GIT_SSH_COMMAND="ssh -i ~/.ssh/id_ed25519_git_work -o IdentitiesOnly=yes" git pull
fi

