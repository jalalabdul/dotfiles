# # Install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Deploy each app config file.
for f in `ls . `
do
    if [[ $f == "README.md" ]] || [[ $f == "deploy.sh" ]] || [[ $f == "misc" ]] ; then
        continue
    fi

    if [ -d $f ]; then
        mkdir -p ~/test/.${f}
        cp -f -r ${f}/* ~/test/.${f}
    else
        rm -f ~/test/.${f} # handles overwriting symlinks
        cp -f $f ~/test/.${f}
    fi
done

# # Set up git.
git config --global core.excludesfile ~/.gitignore
git config --global user.name "Jalal Abdul Aziz"
git config --global user.email "jalalabdulaziz@gmail.com"