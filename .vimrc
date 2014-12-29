" Vundle setup
" =============================================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'


" Navigation plugins
" =============================================================================
Plugin 'rking/ag.vim' 			" Plugin for the_silver_searcher
Plugin 'kien/ctrlp.vim'			" Fuzzy finder
Plugin 'scrooloose/nerdtree'		" Tree explorer plugin
Plugin 'majutsushi/tagbar'		" Browse the tags of the current file


" Editing plugins
" =============================================================================
Plugin 'tpope/vim-surround'		" Quoting/parenthesizing made simple
Plugin 'scrooloose/nerdcommenter'	" Intensely orgasmic commenting
Plugin 'godlygeek/tabular'		" Text filtering and alignment
Plugin 'terryma/vim-multiple-cursors'	" Sublime Text style multiple selections


" Colors and statusline plugins
" =============================================================================
Plugin 'flazz/vim-colorschemes'		" Colorschemes
Plugin 'bling/vim-airline'		" Status/tabline
Plugin 'edkolev/tmuxline.vim'		" Tmux statusline generator


" Language support plugins
" =============================================================================
Plugin 'jelera/vim-javascript-syntax'	" JavaScript
Plugin 'moll/vim-node'			" Like Rails.vim for Node
Plugin 'fatih/vim-go'			" Go development plugin
Plugin 'dart-lang/dart-vim-plugin'	" Highlighting for Dart
Plugin 'kchmck/vim-coffee-script'	" Highlighting for CoffeeScript
Plugin 'mattn/emmet-vim'		" Emmet for vim
Plugin 'groenewege/vim-less'		" Syntax for LESS
Plugin 'mustache/vim-mustache-handlebars' " mustache and handlebars mode


" Git plugins
" =============================================================================
Plugin 'tpope/vim-fugitive'		" Git wrapper
Plugin 'airblade/vim-gitgutter'		" Shows a git diff in the gutter


" Tmux plugins
" =============================================================================
Plugin 'tpope/vim-tbone'		" tmux basics
Plugin 'christoomey/vim-tmux-navigator'	" Navigation between tmux/vim


" Snippets plugins
" =============================================================================
"Plugin "MarcWeber/vim-addon-mw-utils"
"Plugin "tomtom/tlib_vim"
"Plugin "garbas/vim-snipmate"
" Optional:
"Plugin "honza/vim-snippets"

"Plugin 'SirVer/ultisnips'


" Misc plugins
" =============================================================================
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'


" File-type, highlighting and configuration.
" =============================================================================
syntax on
au BufNewFile,BufRead *.less set filetype=less
filetype on
filetype plugin on
filetype indent on
"au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
"au BufEnter *.org

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
set autoindent
set splitbelow
set backspace=indent,eol,start


" Go Compiler and Spacing
" =============================================================================
autocmd FileType go compiler go
autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4 nolist


" Show trailing spaces and remove on write
" =============================================================================
autocmd BufWritePre * :%s/\s\+$//e
set listchars=tab:>-,trail:>
set list


" Colors
" =============================================================================
set background=dark
colorscheme hemisu


" Disable arrow keys
" =============================================================================
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


" More natural split opening
" via http://bit.ly/1ebYKRN
" =============================================================================
set splitbelow
set splitright


" Improve navigation of wrapped lines
" =============================================================================
nnoremap j gj
nnoremap k gk


" Toggle paste mode
" This makes it possible to paste from OS clipboard
" without all kinds of goofy spacing.
" =============================================================================
set pastetoggle=<F2>


" CtrlP
" =============================================================================
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '(node_modules|bower_components)'


" AIRLINE
" =============================================================================
set noshowmode
set encoding=utf-8
set term=xterm-256color
set laststatus=2
set guifont=Liberation\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1


" tmuxline
" =============================================================================
let g:tmuxline_preset='tmux'


" Git gutter
" =============================================================================
highlight clear SignColumn


" Emmet trigger key
" =============================================================================
"let g:user_emmet_leader_key='<C-Z>'


" Enable scrolling and mouse navigation
" =============================================================================
set mouse=a


" Saves time
" =============================================================================
nmap <space> :


" Automatically change current dir to that of file in buffer
" =============================================================================
autocmd BufEnter * cd %:p:h


" tmux/vim nagivation
" http://www.codeography.com/2013/06/19/navigating-vim-and-tmux-splits
" =============================================================================

if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif


