kaizen
======


### Requirements

* Install ansible locally
* Tested with Ubuntu 14.04 LTS on Digital Ocean

### Installation

* Edit `hosts` with correct `IP_ADDRESS` and `HOME` path
* Run `ansible-playbook playbook.yml -i hosts -l forge`
* Log in with `ssh smith@IP_ADDRESS`

### Ansible Playbook

* creates user with sudo membership
* adds ssh keys from https://github.com/USERNAME.keys
* configures ufw firewall
* updates cron-apt
* sets timezone
* configures ntp
* ensures zsh is the default shell
* adds .gitconfig from local user
* installs stable nodejs and updates npm
* installs dotfiles
* installs antigen plugins for zsh
* installs Vundle for vim
* installs vim plugins
* creates standard directories

### Packages Installed and Updated

#### apt

* git
* ufw
* cron-apt
* ntp
* mosh
* tmate
* hub
* curl
* mercurial
* make
* binutils
* bison
* gcc
* build-essential
* python-software-properties
* silversearcher-ag
* zsh
* tmux
* vim

#### ppa

* nodejs/npm
* docker
* docker compose

#### source

* kaizen


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



