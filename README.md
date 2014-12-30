kaizen
======

### WTF

Kaizen is an opinionated collection of dotfiles, shell scripts and How To's that makes it dead simple to set up sane configurations of tmux, vim, and zsh on a new Ubuntu Server in the cloud. It's optimized for hacking primarily backend code in an environment similar to the one it will be deployed in (containers in the cloud). It aims to make pair programming and working remotely a piece of cake, and to minimize the importance of the client platform. Kaizen turns a Macbook Pro into a $3000 window manager and an Android tablet with a bluetooth keyboard into a powerful $300 workstation. It slices, it dices and even juliennes fries, and if you buy now, we'll throw in a free set of steak knives. That was a joke. There are no free steak knives :)

### Requirements

Set up a new bare metal or virtual server running Ubuntu 14.10. [Lock it down](https://www.digitalocean.com/community/tutorial_series/new-ubuntu-14-04-server-checklist), as recommended by Digital Ocean and others.

### Installation

#### Did you read the requirements? Good. This could totally destroy any existing setup you have, so make sure you run it on a fresh Ubuntu instance.

Running this command on Ubuntu linux will install system packages, clone this repository, initialize its submodules, create symlinks to dotfiles, set the default shell to zsh, install vim and zsh plugins, configure git, and generate a new ssh keypair. When it's finished, you'll have nothing left to do but write code, ..., and profit.

```bash
# CHECK BACK IN A DAY OR TWO
```

### Features

#### Installs system packages

* build-essentials
* docker.io
* nodejs
* silversearcher-ag
* zsh
* mosh (built from source to support remote scrolling)

#### Vim bundles with Vundle

##### Navigation plugins

* [rking/ag.vim](https://github.com/rking/ag.vim)
* [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
* [majutsushi/tagbar](https://github.com/majutsushi/tagbar)

##### Editing plugins

* [tpope/vim-surround](https://github.com/tpope/vim-surround)
* [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [godlygeek/tabular](https://github.com/godlygeek/tabular)
* [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

##### Colors and statusline plugins

* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)
* [bling/vim-airline](https://github.com/bling/vim-airline)
* [edkolev/tmuxline.vim](https://github.com/edkolev/tmuxline.vim)

##### Language support

* [jelera/vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
* [moll/vim-node](https://github.com/moll/vim-node)
* [fatih/vim-go](https://github.com/fatih/vim-go)
* [dart-lang/dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin)
* [kchmck/vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
* [groenewege/vim-less](https://github.com/groenewege/vim-less)
* [mustache/vim-mustache-handlebars](https://github.com/mustache/vim-mustache-handlebars)

##### Git plugins

* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
* [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)

##### Tmux plugins

* [tpope/vim-tbone](https://github.com/tpope/vim-tbone)
* [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

##### Snippets

* [...](https://github.com/)
* [...](https://github.com/)
* [...](https://github.com/)
* [...](https://github.com/)

##### Miscellaneous plugins

* [xolox/vim-misc](https://github.com/xolox/vim-misc)
* [xolox/vim-shell](https://github.com/xolox/vim-shell)


#### ZSH plugins with Antigen

* [oh-my-zsh]()
* []()


#### Dotfiles

* .zshrc
* .vimrc
* .tmux.conf



