#!/bin/bash

mkdir $HOME/bin

mkdir -p $HOME/workspaces/projects
mkdir -p $HOME/workspaces/playground

sudo chown -R $USER:$USER ./config-dir/

cp -vf ./config-dir/.* $HOME