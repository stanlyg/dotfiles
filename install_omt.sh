#!/bin/bash
############################
# install_omt.sh
# This script installs oh-my-tmux
############################

pushd ~
git clone --single-branch https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
echo "Make sure your .tmux.conf.local file is in place."
popd
