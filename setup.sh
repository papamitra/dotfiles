#!/bin/bash

DOTFILES_DIR=$(readlink -f $(dirname $0))

DOT_FILES=( .zsh .zshrc .tmux.conf .emacs.d)

for file in ${DOT_FILES[@]}
do
    if [ -d $DOTFILES_DIR/$file ]; then
        ln -s $DOTFILES_DIR/$file $HOME
    else
        ln -s $DOTFILES_DIR/$file $HOME/$file
    fi
done

git clone https://github.com/zsh-users/zaw.git $HOME/.zsh/zaw
git clone https://github.com/tam17aki/elscreen.git $HOME/.emacs.d/site-lisp/elscreen

EMACS_DIR=$HOME/.emacs.d
ln -s $EMACS_DIR/inits/elscreen.el  $EMACS_DIR/inits/50_elscreen.el
ln -s $EMACS_DIR/inits/c++-mode.el  $EMACS_DIR/inits/50_c++-mode.el
ln -s $EMACS_DIR/inits/yasnippet_init.el $EMACS_DIR/inits/50_yasnippet_init.el
