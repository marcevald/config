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
Plug 'rhysd/vim-grammarous'
Plug 'puremourning/vimspector'
call plug#end()

"Leader Keys
let mapleader = ','
let maplocalleader= "-"

syntax on
set number
set relativenumber
colorscheme darkblue

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype indent on

let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode = 0
set conceallevel=1
let g:tex_conceal='abdmg'
" Set default latex type
let g:tex_flavor = "latex"
 "Disable warnings about missing clientserver, since none is available
"let g:vimtex_compiler_latexmk = {'callback' : 0}
"let g:vimtex_compiler_latexmk = {
"    \ 'options' : [
"    \   '-pdf',
"    \   '-shell-escape',
"    \   '-verbose',
"    \   '-file-line-error',
"    \   '-synctex=0',
"    \   '-interaction=nonstopmode',
"    \ ],
"    \}


"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Set UltiSnip Directory
let g:UltiSnipsSnippetDirectories = ["UltiSnips","myUltiSnips"]
let g:UltiSnipsSnippetsDir = "~/.vim/myUltiSnips"
let g:UltiSnipsEditSplit = "horizontal"
let g:UltiSnipsExpandTrigger='<Leader><Leader>'
let g:UltiSnipsListSnippets='<c-tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UaptiSnipsJumpBackwardTrigger='<c-k>'

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-c> :w<CR> <bar> :!clear && cmake . -Bbuild && cmake --build build/<CR>
nmap <C-n> :NERDTreeToggle<CR>
" Spell check
" Fix mistake
noremap <Leader>f z=
" Add to dict
noremap <Leader>a zg
" Next mistake
noremap <Leader>n ]s
" Enable check
nnoremap <Leader>sp :set spell spelllang=en_us<CR>
" Quick edit
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
