#!/bin/bash
###############################################################################
#
# Name:	   profile_setup.sh
# Author:  Nathan A. Smith
# Purpose: Initial profile setup -- Installing VIM personalization and
#    	   creating symlinks for dotfiles
#
###############################################################################

### Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc bash_profile dir_colors"
RC=0

### Mainline

# create dotfiles_old in home directory
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfile in home directory to dotfiles_old directory, then create symbolic links
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# check to see if .vim folder exists. if not, make directory

if [ ! -d "~/.vim" ]; then
    echo "Making .vim directory."
    mkdir ~/.vim
    echo "...done"
fi

# make vim autoload and bundle directories, install pathogen and clone Vim Sensible and Solarized Vim colors
echo "Making Vim autoload and bundle directories"
mkdir ~/.vim/autoload ~/.vim/bundle
echo "...done"

echo "Installing Pathogen and other Vim plugins..."
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

if [ $? -ne 0 ]; then
    RC=$?
fi

cd ~/.vim/bundle

git clone https://github.com/tpope/vim-sensible.git 

if [ $? -ne 0 ]; then
    RC=$?
fi
git clone git://github.com/altercation/vim-colors-solarized.git 

if [ $? -ne 0 ]; then
    RC=$?
fi
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git 

if [ $? -ne 0 ]; then
    RC=$?
fi
git clone git://github.com/Raimondi/delimitMate.git

if [ $? -ne 0 ]; then
    RC=$?
fi

if [ $RC -ne 0 ]; then
    echo "There were problems with the installation. Please check output for errors."
else
    echo "...done"
fi
