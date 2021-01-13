
export VIM_RUNTIME=$HOME/.vim_runtime

if [ -d $VIM_RUNTIME ]
then 
  echo "$VIM_RUNTIME already exists"
else
  echo "Installing 'The Ultimate vimrc' from amix/vimrc.git"
  git clone --depth=1 https://github.com/amix/vimrc.git $VIM_RUNTIME
  sh ~/.vim_runtime/install_awesome_vimrc.sh
  ln -s $PWD/my_configs.vim $VIM_RUNTIME 
fi
