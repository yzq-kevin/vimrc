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

ln -s $VIMHOME/.vimrc ~/.vimrc
ln -s $VIMHOME ~/.vim


#
#git clone git://github.com/yzq-fisher/vimrc.git "$VIMHOME"
#cd "$VIMHOME"
#git submodule update --init
#
#./install-vimrc.sh
#
#cd bundle/command-t/ruby/command-t
#(ruby extconf.rb && make) || warn "Can't compile Command-T."
#
#echo "vgod's vimrc is installed."
#
#
#
#url = git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex/ bundle/vim-latex
#url = https://github.com/vim-scripts/Smart-Parentheses.git bundle/smart-parentheses
#url = https://github.com/Townk/vim-autoclose.git bundle/autoclose
#url = https://github.com/wincent/Command-T.git bundle/command-t
#url = https://github.com/tpope/vim-surround.git bundle/surround
#url = https://github.com/Twinside/vim-cuteErrorMarker.git bundle/CuteErrorMarker
#url = https://github.com/msanders/snipmate.vim.git bundle/snipmate
#url = https://github.com/vim-scripts/YankRing.vim.git bundle/yankring
#url = https://github.com/vim-scripts/VisIncr.git bundle/VisIncr
#url = https://github.com/sukima/xmledit.git bundle/xmledit
#url = https://github.com/vim-scripts/matchit.zip.git bundle/matchit
#url = https://github.com/ervandew/supertab.git bundle/supertab
#url = https://github.com/vim-scripts/OmniCppComplete.git bundle/OmniCppComplete
#url = https://github.com/vim-scripts/javacomplete bundle/javacomplete
#url = https://github.com/vgod/scala-vim-support.git bundle/scala-vim-support
#url = https://github.com/scrooloose/nerdtree.git bundle/nerdtree
#url = https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
#url = git://github.com/Lokaltog/vim-easymotion.git bundle/easymotion
#url = git://github.com/majutsushi/tagbar bundle/tagbar
#url = https://github.com/vim-scripts/pythoncomplete.git bundle/pythoncomplete
#url = https://github.com/Lokaltog/vim-powerline.git bundle/powerline
#url = https://github.com/pangloss/vim-javascript.git bundle/vim-javascript
#url = git://github.com/vim-scripts/indent-motion.git bundle/indent-motion
#url = git://github.com/davidhalter/vim-snipmate.git bundle/vim-snipmate
#url = https://github.com/tomtom/tlib_vim.git bundle/tlib_vim
#url = https://github.com/MarcWeber/vim-addon-mw-utils.git bundle/vim-addon-mw-utils
#url = https://github.com/honza/snipmate-snippets.git bundle/snipmate-snippets
#url = http://github.com/mattn/zencoding-vim.git bundle/zencoding-vim
#url = git://github.com/mileszs/ack.vim.git bundle/ack.vim
#url = git://github.com/kchmck/vim-coffee-script.git bundle/vim-coffee-script
