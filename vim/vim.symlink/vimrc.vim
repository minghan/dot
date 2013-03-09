""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Vundle and Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Pathogen - require autoload/pathogen.vim
" In Vim, run :BundleInstall, or 
" for CLI  $ vim +BundleInstall +qall
call pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set number
set smartindent
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"set noexpandtab
set laststatus=2
set ruler
set hlsearch "highlight searches
set ofu=syntaxcomplete#Complete
set history=1000
syntax on
set t_Co=256

""" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Color Scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gardener
" colorscheme zenburn

""" Solarized
" let g:solarized_termcolors=256
" colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" File Type
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on

autocmd FileType python     setlocal ts=4 sts=4 sw=4
autocmd FileType jade       setlocal ts=2 sts=2 sw=2
autocmd FileType html       setlocal ts=2 sts=2 sw=2
autocmd FileType css        setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NOTE: <Leader> key is mapped to \ by default

""" Mappings to move lines (alt-j/k but esc == alt)
" nnoremap j :m+<CR>==
" nnoremap k :m-2<CR>==
" inoremap j <Esc>:m+<CR>==gi
" inoremap k <Esc>:m-2<CR>==gi
" vnoremap j :m'>+<CR>gv=gv
" vnoremap k :m-2<CR>gv=gv

""" disable arrow keys
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

""" Shortcut for creating tab
":nmap <C-t> :tabnew<CR>
":imap <C-t> <Esc>:tabnew<CR>
""" nagivating tab: C-PageDown and C-Page

map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <Leader>f :let @/='\<'.expand("<cword>").'\>'\|set hlsearch<C-M>
map <Leader>h :nohl<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'

" KIV - https://github.com/Valloric/YouCompleteMe
" Requires Vim 7.3.584
" Bundle 'Valloric/YouCompleteMe'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Plugin Related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" tcomment
map s gcc

""" NERDTree
let Tlist_Use_Right_Window=1

""" NERDCommenter
" let NERDSpaceDelims=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Fancy Stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

""" Highlight text more than 80 chars
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

