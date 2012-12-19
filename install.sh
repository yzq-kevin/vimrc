#!/bin/sh

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


#specify backup path

git submodule add git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex/ bundle/vim-latex
git submodule add https://github.com/Townk/vim-autoclose.git bundle/autoclose
git submodule add https://github.com/tpope/vim-surround.git bundle/surround
git submodule add https://github.com/Twinside/vim-cuteErrorMarker.git bundle/CuteErrorMarker
git submodule add https://github.com/vim-scripts/YankRing.vim.git bundle/yankring
git submodule add https://github.com/vim-scripts/VisIncr.git bundle/VisIncr
git submodule add https://github.com/sukima/xmledit.git bundle/xmledit
git submodule add https://github.com/vim-scripts/matchit.zip.git bundle/matchit
git submodule add https://github.com/ervandew/supertab.git bundle/supertab
git submodule add https://github.com/vim-scripts/OmniCppComplete.git bundle/OmniCppComplete
git submodule add https://github.com/vim-scripts/javacomplete bundle/javacomplete
git submodule add https://github.com/vgod/scala-vim-support.git bundle/scala-vim-support
git submodule add https://github.com/scrooloose/nerdtree.git bundle/nerdtree
git submodule add https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
git submodule add git://github.com/Lokaltog/vim-easymotion.git bundle/easymotion
git submodule add git://github.com/majutsushi/tagbar bundle/tagbar
git submodule add https://github.com/vim-scripts/pythoncomplete.git bundle/pythoncomplete
git submodule add https://github.com/Lokaltog/vim-powerline.git bundle/powerline
git submodule add https://github.com/pangloss/vim-javascript.git bundle/vim-javascript
git submodule add git://github.com/davidhalter/vim-snipmate.git bundle/vim-snipmate
git submodule add https://github.com/tomtom/tlib_vim.git bundle/tlib_vim
git submodule add https://github.com/MarcWeber/vim-addon-mw-utils.git bundle/vim-addon-mw-utils
git submodule add https://github.com/honza/snipmate-snippets.git bundle/snipmate-snippets
git submodule add http://github.com/mattn/zencoding-vim.git bundle/zencoding-vim
git submodule add git://github.com/kchmck/vim-coffee-script.git bundle/vim-coffee-script
git submodule add git://github.com/tpope/vim-fugitive.git bundle/fugitive
git submodule add https://github.com/sandeepcr529/Buffet.vim.git bundle/buffet
git submodule add https://github.com/altercation/vim-colors-solarized.git bundle/solarized
git submodule add https://github.com/tomasr/molokai.git bundle/molokai
git submodule add https://github.com/vim-scripts/a.vim.git bundle/a-vim
git submodule add https://github.com/aaronbieber/quicktask.git bundle/quicktask
#git submodule add git://github.com/mileszs/ack.vim.git bundle/ack.vim
#git submodule add https://github.com/vim-scripts/Smart-Parentheses.git bundle/smart-parentheses
#git submodule add https://github.com/wincent/Command-T.git bundle/command-t
#git submodule add git://github.com/vim-scripts/indent-motion.git bundle/indent-motion

git submodule init
git submodule update

ln -s ${VIMHOME} ~/.vim
ln -s ${VIMHOME}vimrc ~/.vimrc
mkdir  ~/.vim/backup
mkdir  ~/.vim/temp 





