if [ -f ~/.vimrc ]; then
    echo ".vimrc exist --> mv to .vimrc.orig";
    mv ~/.vimrc ~/.vimrc.orig
fi
ln -s ~/vimrc/.vimrc ~/.vimrc

if [ ! -d ~/.vim ]; then
    echo "creating ~/.vim";
    mkdir ~/.vim
fi

if [ ! -d ~/.vim/bundle ]; then
    echo "creating ~/.vim/bundle";
    mkdir ~/.vim/bundle
fi

git clone https://www.github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

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
