autocmd vimenter * NERDTree

" syntax highlights
syntax on
colorscheme gruvbox
set background=dark

" Indendation
set showmatch
set ruler
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab

" search options
set hlsearch
set ignorecase
set incsearch
set smartcase

" text rendering
set encoding=utf-8
set scrolloff=1

" UI
set wildmenu
set number relativenumber
set title
set cursorline

" Code completion
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
set foldmethod
set foldnestmax=3

" misc
set confirm
set history=1000



