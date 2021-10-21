syn on
set ruler
set tabstop=2
set expandtab
set shiftwidth=2
" set ai
set hlsearch
set incsearch
set textwidth=80
set autowrite
set highlight=l:ErrorMsg
set ignorecase
set smartcase
set scrolloff=2
set wildmode=longest,list
set nocompatible
set noswapfile

" display settings
set background=dark
" enable for dark terminals
set nowrap              " dont wrap lines 
set scrolloff=2         " 2 lines above/below cursor whe
set number              " show line number
set showmatch
" show matching bracket (briefly jump)
set showmode            " show mode in status bar (insert/replace/..
set showcmd             " show typed command in status b
set ruler               " show cursor position in status ba
set title               " show file in titleba
set wildmenu            " completion with me
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,
set laststatus=2        " use 2 lines for the status bar set matchtime=2      
" # show matching bracket for 0.2 second
set matchpairs+=<:>
set confirm

"Enable iTerm to use 256 colors in vim
set t_Co=256

" I prefer koheler, murphy but setting to slate so I don't mistake dev for prod with both windows open
colorscheme murphy
