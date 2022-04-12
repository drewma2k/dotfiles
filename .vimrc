source $VIMRUNTIME/defaults.vim
syntax on
set number
set nocompatible
set nowrap
filetype indent on
set expandtab
set smartcase
set showcmd
set wildmenu
set laststatus=2
set tags=./tags;/,.tags;/
set mouse=
highlight Pmenu ctermbg=darkgrey ctermfg=white cterm=none
highlight PmenuSel ctermbg=white ctermfg=DarkGrey

" Netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_usetab = 1
let g:netrw_wiw = 0

" Python
let python_highlight_all = 1

set rtp+=/usr/local/opt/fzf

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jungunn/fzf.vim'
Plugin 'jungunn/fzf'
Plugin 'sheerun/vim-polyglot'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'dense-analysis/ale'
call vundle#end()

let g:ycm_auto_hover = ''
nmap <leader>D <plug>(YCMHover)

filetype plugin indent on

"detect Bogiefile and Gearsfile as yaml
augroup Bogie
  au!
  autocmd BufNewFile,BufRead Bogiefile,Gearsfile set filetype=yaml
augroup END
