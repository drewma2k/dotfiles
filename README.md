# Dotfiles
configuration files

## Installation
Run `make`, then follow below instructions per component

### VIM & NVIM
1. Start vim and run `:PluginInstall`
2. Install `yarn`
3. Run `cd ~/.vim/bundle/coc.nvim; yarn install`
4. See [coc.nvim](https://github.com/neoclide/coc.nvim/wiki/Language-servers) for installing LSP servers and configurations

### NVIM
1. Run `pip3 install pynvim`

#### Install TreeSitter grammars
```
:TSInstall <language>
```

### ZSH
1. Install [oh-my-zsh](https://ohmyz.sh)
```
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
2. Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### ALIASES
1. Install `exa` command
