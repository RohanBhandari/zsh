# zsh

## Setup zsh environment
#### 1. Initial setup
* Check if zsh is installed with `zsh --version` and install if needed.
* Set zsh to default shell with `chsh -s $(which zsh)`

#### 2. Install oh-my-zsh
```
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
 ```

#### 3. Setup oh-my-zsh variables
* Set `ZSH_CUSTOM="$ZSH/custon/zsh"` in `~/.oh-my-zsh.sh`, and set `ZSH_THEME` to theme name in `~/.zshrc`:
```
sed -i'' -e 's|$ZSH/custom|$ZSH/custom/zsh|g' ~/.oh-my-zsh/oh-my-zsh.sh
sed -i'' -e 's|ZSH_THEME="robbyrussell"|ZSH_THEME="agnoster_mod"|g' ~/.zshrc
```

#### 4. Setup iTerm2 Shell Integration
```
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh
echo "source ~/.iterm2_shell_integration.zsh" >> .zshrc
```

### 5. Set Anaconda Variables (optional)
* To avoid duplicate environment names in command prompt, turn off conda printing:
`conda config --set changeps1 no`.

* Add conda setup to `.zshrc`:
`echo ". /home/rohan/.miniconda3/etc/profile.d/conda.sh" >> ~/.zshrc`