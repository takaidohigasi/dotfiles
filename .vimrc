" general settings
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set nolist
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

" settings for tab
set list listchars=tab:>>
set expandtab
set tabstop=2

" settings for search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
