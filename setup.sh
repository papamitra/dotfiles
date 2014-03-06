#!/bin/sh

SHELL_DIR=$(readlink -f $(dirname $0))

ln -s $SHELL_DIR/tmux/.tmux.conf $HOME/
ln -s $SHELL_DIR/zsh/.zshrc $HOME/

mkdir $HOME/zsh
ln -s $SHELL_DIR/zsh/zsh $HOME/zsh
ln -s $SHELL_DIR/zsh/behind-window-notify $HOME/zsh

mkdir $HOME/.emacs.d
EMACS_DIR=$HOME/.emacs.d

ln -s $SHELL_DIR/emacs/init.el $EMACS_DIR/
ln -s $SHELL_DIR/emacs/elpa $EMACS_DIR/
ln -s $SHELL_DIR/emacs/site-lisp $EMACS_DIR/
ln -s $SHELL_DIR/emacs/snippets $EMACS_DIR/


