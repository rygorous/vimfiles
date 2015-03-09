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

" Use The Silver Searcher when available
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
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
command PA !p4 add %
command PE !p4 edit %
command PR !p4 revert %
command Cdb cd c:/devel/projects/bink
command Cdg cd c:/devel/projects/g
command Cdt cd c:/devel/projects/telemetry_dev2
