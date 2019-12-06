call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'vhdirk/vim-cmake'
Plug 'scrooloose/nerdtree'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'pboettch/vim-cmake-syntax'
Plug 'vim-airline/vim-airline'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

"let g:UltiSnipsExpandTrigger='<leader>e'
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:livepreview_previewer = 'zathura'
let mapleader = ','

let g:tex_flavor = "latex"

syntax on
set number
set relativenumber
colorscheme darkblue

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"let maplocalleader="-"

" Set UltiSnip Directory
let g:UltiSnipsSnippetDirectories = ["UltiSnips","myUltiSnips"]
let g:UltiSnipsSnippetsDir = "~/.vim/myUltiSnips"
let g:UltiSnipsEditSplit = "horizontal"


let g:UltiSnipsExpandTrigger='<Leader><Leader>'
let g:UltiSnipsListSnippets='<c-tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'


autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-c> :w<CR> <bar> :!clear && cmake . -Bbuild && cmake --build build/<CR>
