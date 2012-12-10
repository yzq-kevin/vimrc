#!/bin/sh
VIMHOME=./
MODULES=./modules.txt
VIMRC="vimrc"

#VIMHOME=~/.vim
#
#warn() {
#    echo "$1" >&2
#}
#
#die() {
#    warn "$1"
#    exit 1
#}
#
#[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
#[ -e "~/.vim" ] && die "~/.vim already exists."
#[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

if [ -e .git ]
then
    git remote update
fi

if [ ! -e .gitmodules ]
then
    while read url loc 
    do 
        git submodule add $url $loc 
        git submodule init && git submodule update
        echo "$url $loc"
    done < $MODULES 
else
    git submodule foreach git pull origin master
fi
#install

ln -s $VIMHOME/vimrc ~/.vimrc
ln -s $VIMHOME ~/.vim


