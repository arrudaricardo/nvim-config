"    _____                           _    _____             __ _       
"   / ____|                         | |  / ____|           / _(_)      
"  | |  __  ___ _ __   ___ _ __ __ _| | | |     ___  _ __ | |_ _  __ _ 
"  | | |_ |/ _ | '_ \ / _ | '__/ _` | | | |    / _ \| '_ \|  _| |/ _` |
"  | |__| |  __| | | |  __| | | (_| | | | |___| (_) | | | | | | | (_| |
"   \_____|\___|_| |_|\___|_|  \__,_|_|  \_____\___/|_| |_|_| |_|\__, |
"                                                                 __/ |
"                                                                |___/ 

let g:auto_save = 1             " enable AutoSave on Vim startup 
set clipboard=unnamed           " Copy paste between vim and everything else
set nowrap                      " Display long lines as just one line"
set linespace=0                 " Only for GUI
set conceallevel=0              " So that I can see `` in markdown files
set splitbelow                  " Horizontal splits will automatically be below
set splitright                  " Vertical splits will automatically be to the right
set iskeyword+=-                " treat dash separated words as a word text object"
set t_Co=256                    " Support 256 colors
set number relativenumber       " Always show line number relative 
set incsearch
syntax enable                   " Enables syntax highlighing
set tabstop=2                   " Insert 2 spaces for a tab"
set shiftwidth=2                " Change the number of space characters inserted for indentation"
set smarttab                    " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                 " Makes indenting smart
set autoindent                  " Good auto indent
set laststatus=0                " Always display the status line
set expandtab                   " Convert new tabs to spaces
set hidden                      " Required to keep multiple buffers open multiple buffers"
set cmdheight=2                 " More space for displaying messages
set shortmess+=c                " This option helps to avoid all the hit-enter prompts caused by file messages
set signcolumn=yes
set noswapfile                  " Disable swap files permanently
set nobackup                    " This is recommended by coc
set nowritebackup               " This is recommended by coc
set updatetime=300              " Faster completion
set timeoutlen=500              " By default timeoutlen is 1000 ms

