ln -s ~/vimrc/.vimrc ~/.vimrc
mkdir ~/.vim
mkdir ~/.vim/bundle
git clone https://www.github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

mkdir ~/.vim/colors
git clone https://github.com/tomasr/molokai ~/.vim/molokai
mv ~/.vim/molokai/colors/molokai.vim ~/.vim/colors
rm -rf ~/.vim/molokai
