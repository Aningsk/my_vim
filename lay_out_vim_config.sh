#!/bin/bash

# git clone this repo into some dir
# such as ~/my_vim/
# run this shell script in ~/my_vim/

# Create ~/.vim/ 
cd ~
if [ -d .vim ]
then
	mv .vim _vim_orig
	echo "Rename original .vim as _vim_orig"
fi
mkdir .vim
cd -

# .vim/bundle/
tar xzf bundle.tar.gz 
cp -a ./bundle ~/.vim/

# .vim/colors/
tar xzf colors.tar.gz 
cp -a ./colors ~/.vim/

# .vim/doc/
tar xzf doc.tar.gz 
cp -a ./doc ~/.vim/

# .vim/plugin/
tar xzf plugin.tar.gz 
cp -a ./plugin ~/.vim/

# .vim/syntax/
tar xzf syntax.tar.gz 
cp -a ./syntax ~/.vim/

echo "Create .vim done."

# Create ~/.vimrc
if [ -f ~/.vimrc ]
then
	mv ~/.vimrc ~/_vimrc_orig
	echo "Rename orignal .vimrc as _vimrc_orig"
fi
cp ./_vimrc ~/.vimrc
echo "Create .vimrc done."
