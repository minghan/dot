" require autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


""" General Settings

set nocompatible

set number
set smartindent
set mouse=a

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set laststatus=2
set ruler
set hlsearch "highlight searches
"set noexpandtab

syntax on

filetype plugin on
set ofu=syntaxcomplete#Complete

set history=1000

""" NERDCommenter
" let NERDSpaceDelims=1

""" Highlight text more than 80 chars
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

""" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

""" Comment macro
map s gcc

set t_Co=256

colorscheme desert
" colorscheme zenburn
" let g:solarized_termcolors=256
" colorscheme solarized

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

""" Shortcut for creating tab
":nmap <C-t> :tabnew<CR>
":imap <C-t> <Esc>:tabnew<CR>
"nagivating tab: C-PageDown and C-Page

filetype plugin indent on
" ~/.vim/after/ftplugin/html.vim

" Alternatively,
" autocmd FileType html   setlocal shiftwitdh=2 tabstop=2
" autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4



" disable arrow keys
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

