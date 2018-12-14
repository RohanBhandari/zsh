#!/bin/bash

# This script automatically sets up my preferred environment:
#   1) oh-my-zsh
#   2) Shell integration (iterm2)
#   3) Custom zsh theme and commands

# Go to home directory
cd $HOME

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup shell integration
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# Setup custom zsh theme and commands
sed -i -e 's|$ZSH/custom|$ZSH/custom/zsh|g' ~/.oh-my-zsh/.oh-my-zsh.sh
sed -i -e 's|ZSH_THEME="robbyrussell"|ZSH_THEME="agnoster_mod"|g' ~/.zshrc

# Move files to custom directory
mv ./zsh/ ~/.oh-my-zsh/custom/

# sed command works differently on macOS (and depending on version). Remove possible backup files made in process.
rm -f ~/.oh-my-zsh/.oh-my-zsh.sh-e
rm -f ~/.zshrc-e