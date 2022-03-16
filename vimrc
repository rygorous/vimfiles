source ~/vimfiles/bundles.vim

" Maximize on startup (Win32)
if has("win32")
    autocmd GUIEnter * simalt ~x
    " Put swap files in temp
    set directory=c:/windows/temp/vim//
    " I have GNU Grep installed.
    set grepprg=grep\ -nH
    set guifont=Consolas_for_Powerline_FixedD:h9
    let g:molokai_original=1
    let g:Powerline_symbols="fancy"
elseif has("unix")
    set guifont=Consolas\ for\ Powerline\ 9
    let g:Powerline_symbols="fancy"
    set t_Co=256
    let g:rehash256=1
endif

" GUI and color scheme
"colorscheme molokai
colorscheme zenburn
set linespace=0
set fillchars=""

" UTF-8!
set encoding=utf-8

" Turn off menus, toolbars and scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=L

" Slashes in paths everywhere
set shellslash

" Various GUI/editing options
set cpoptions+=$
set backspace=indent,eol,start
set nowrap
set ruler
set showcmd
set showmode
set wildmenu
syntax on

" Tab/indent settings
set autoindent
set expandtab
set smarttab
set cino=:0l1g0t0(0

" Highlight search
set hlsearch

" No point in backup files, everything is version controlled!
set nobackup
set noswapfile

set laststatus=2
set cmdheight=2

" Hidden buffers don't ned to be unloaded
set hidden

" Wildcard ignores
set wildignore=*.o,*.obj,*.a,*.lib,*.exe,*.pdb,*.map

" Use Ripgrep when available
if executable("rg")
    set grepprg=rg\ --color\ never
    let g:ctrlp_user_command='rg --files --color never -g "" %s'
    let $FZF_DEFAULT_COMMAND='rg --files --color never -g ""'
endif

" NERDTree config
let NERDTreeShowBookmarks=1
nmap <F10> :NERDTreeToggle<CR>

" Quickfix mappings
nmap <F8> :cnext<CR>
nmap <S-F8> :cprevious<CR>
nmap <C-S-F> :noautocmd vimgrep 
imap <C-S-F> :noautocmd vimgrep

" Turn off autohighlight by hitting return
nnoremap <CR> :nohl<CR><CR>

" DOS Edit-style copy & paste to system buffer.
vmap <C-Insert> "*y<CR>
vmap <C-Delete> "*d<CR>
nmap <S-Insert> "*P<CR>
vmap <S-Insert> "*P<CR>

" RAD locals
command Cdb cd c:/devel/projects/bink
command Cdg cd c:/devel/projects/g
command Cod cd c:/devel/projects/oodle2

" Indent styles
command CbInd set ts=4 sts=4 sw=4 noet
command FgInd set ts=4 sts=4 sw=4 et
command JrInd set ts=2 sts=2 sw=2 et
command SbInd set ts=3 sts=3 sw=3 et

" Old CtrlP setup
let g:ctrlp_working_path_mode=0

" New FZF setup
let g:fzf_preview_window=[]
nmap <C-P> :Files<CR>

" AsyncRun setup
let g:asyncrun_open=12
let g:cdepbuildtype='-onlywin64 -r'
nmap <F7> :AsyncRun -save=2 fgb <C-R>=cdepbuildtype<CR><CR>

" Map keys for tiler
nmap <C-N> <plug>TilerNew
nmap <C-C> <plug>TilerClose
nmap <C-Space> <plug>TilerFocus
nmap <C-W>. <plug>TilerRotateForwards
nmap <C-W>, <plug>TilerRotateBackwards
nmap <C-J> :wincmd j<CR>
nmap <C-K> :wincmd k<CR>
nmap <C-L> :wincmd l<CR>
nmap <C-H> :wincmd h<CR>

let g:tiler#layout = 'left'
let g:tiler#master#size = 50
let g:tiler#popup#windows = {
\ 'quickfix': { 'position': 'bottom', 'size': 12, 'filetype': 'qf', 'order': 1 },
\ 'nerdtree': { 'position': 'left', 'size': 20, 'filetype': 'nerdtree', 'order': 2 },
\ }


