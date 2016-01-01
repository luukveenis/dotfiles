set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Fzy (DKendal / JHawthorn)
Plugin 'Dkendal/fzy-vim'

" tpope <3
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'

" language support
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'
Plugin 'scrooloose/syntastic'

" tool support
Plugin 'rking/ag.vim'
Plugin 'int3/vim-extradite'
Plugin 'Keithbsmiley/rspec.vim'

" Navigation
Plugin 'christoomey/vim-tmux-navigator'

" Other Stuff
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'L9'
Plugin 'mattn/gist-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin indent on

" Use space as leader
let mapleader = "\<space>"
let g:mapleader = "\<space>"

" Fix tabs
set expandtab
set softtabstop=2
set shiftwidth=2

set scrolloff=10
set noswapfile
set nobackup
set noerrorbells visualbell t_vb=
set colorcolumn=80
set number
set hlsearch
set cmdheight=1
set laststatus=2
set showcmd
set list listchars=tab:»·,trail:·
set wildmode=list:longest,list:full
set wildmenu
set splitright
set splitbelow
set cursorcolumn
set cursorline
nmap <cr> :
nmap K \<noop>
vmap K \<noop>

" Clear Highlighting on Escape
nnoremap <esc> :noh<cr><esc>

" Leader shortcuts
nnoremap <leader>ft :TFzyLsAg<cr>
nnoremap <leader>fv :VFzyLsAg<cr>
nnoremap <leader>fl :FzyLsAg<cr>
nnoremap <leader>gc :Gcommit -av<cr>
nnoremap <leader>gd :Git d<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>w :w!<cr>
nnoremap <leader>y yiw
nnoremap <leader>p diwh"0p

" Tab navigation
nnoremap ta  :AT<CR>
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<Space>
nnoremap tm  :tabmove<Space>

" ======== Plugin Configuration =======
"
" gist-vim
let g:gist_post_private = 1

" vim-colors-solarized
set t_Co=256
syntax enable
set background=dark
colo solarized

" vim-airline
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:airline_left_sep=''
let g:airline_right_sep=''

"ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
