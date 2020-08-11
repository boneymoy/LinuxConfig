"install Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"install plugins
call plug#begin('~/.vim/plugged')

Plug 'nvie/vim-flake8'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim' 

call plug#end()

" jedi settings
autocmd FileType python setlocal completeopt-=preview
" Airline settings
let g:airline_theme='gruvbox'

" Nerd Tree settings
let g:NERDTreeQuitOpen = 1
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" syntax highlights
syntax on
colorscheme gruvbox
set background=dark

" transparent
hi Normal ctermbg=NONE

" Yank into clipboard
set clipboard=unnamed

" Indendation
set showmatch
set ruler
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab

"search options
set hlsearch
set ignorecase
set incsearch
set smartcase
set path+=**

" text rendering
set encoding=utf-8
set scrolloff=1

" UI
set wildmenu
set number relativenumber
set title
set cursorline

" splits 
set splitbelow splitright

" Code completion
command! MakeTags !ctags -R .
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap <expr> ) getline('.')[getpos('.')[2] - 1] == ')' ? '<Right>' : ')'
inoremap <expr> ] getline('.')[getpos('.')[2] - 1] == ']' ? '<Right>' : ']'
inoremap <expr> } getline('.')[getpos('.')[2] - 1] == '}' ? '<Right>' : '}'

" code folding
""set foldmethod
set foldnestmax=3

" misc
set confirm
set history=1000
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

