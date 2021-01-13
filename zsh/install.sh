#!/usr/bin/env bash

export OHMYZSH_DIR=${ZDOTDIR:-$HOME}/.oh-my-zsh
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto_bak/runcoms/^README.md; do
#   # ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#   echo "Boom"
#   echo $rcfile
# done

if [ -d $OHMYZSH_DIR ] 
then
     echo "OH-MY-ZSH installed..."
else 
  echo "Installing oh-my-zsh..."
  # git clone --recursive https://github.com/sorin-ionescu/prezto.git $ZPRESTO_DIR
  ZSH= sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

  # echo "Prezto installed: symlinking files to $HOME"
  # setopt EXTENDED_GLOB
  # for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  #   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  # done
fi

echo "Installing other oh-my-zsh plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing Spaceship Prompt"
git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt --depth=1 || true
ln -s ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship.zsh-theme  || true



