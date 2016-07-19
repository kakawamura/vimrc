if [ -f ~/.vimrc ]; then
    echo ".vimrc exist --> mv to .vimrc.orig";
    mv ~/.vimrc ~/.vimrc.orig
fi
ln -s ~/vimrc/.vimrc ~/.vimrc

if [ ! -d ~/.vim ]; then
    echo "creating ~/.vim";
    mkdir ~/.vim
fi

echo "getting installer for dein.vim"
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.vim

if [ ! -d ~/.vim/colors ]; then
    echo "creating ~/.vim/colors";
    mkdir ~/.vim/colors
fi

git clone https://github.com/tomasr/molokai ~/.vim/molokai
mv ~/.vim/molokai/colors/molokai.vim ~/.vim/colors
rm -rf ~/.vim/molokai

git clone https://github.com/romainl/flattene://github.com/romainl/flattened 
mv ~/.vim/flattened/colors/flattened_light.vim ~/.vim/colors
rm -rf ~/.vim/flattened
