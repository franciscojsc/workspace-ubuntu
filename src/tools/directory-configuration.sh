#!/bin/bash

if [ ! -d "$HOME/bin" ]
then
    if [ -z $(which git) ] 
    then
        mkdir $HOME/bin
    else
        cd $HOME
        git clone https://github.com/franciscojsc/bin && chmod +x $HOME/bin/*.sh
        cd -
    fi
    
    if [ -f "$HOME/.bashrc" ]
    then
        echo -e "\\n# Adding my user's bin directory to PATH" | tee -a $HOME/.bashrc
        echo -e "export PATH=\${PATH}:\$HOME/bin\\n" | tee -a $HOME/.bashrc
    fi
fi

if [ ! -d "$HOME/workspaces/projects" ] 
then
    mkdir -p $HOME/workspaces/projects
fi

if [ ! -d "$HOME/workspaces/playground" ] 
then
    mkdir -p $HOME/workspaces/playground
fi

if [ ! -f "$HOME/.gitconfig" ]
then
    echo '# GIT configuration file.
[user]
    # name = your name
    # email = your email
[core]
    editor = code --wait
[diff]
    tool = default-difftool
[difftool "default-difftool"]
    cmd = code --wait --diff $LOCAL $REMOTE' | tee $HOME/.gitconfig
fi
