" 显示行号
set nocompatible              " be iMproved, required
filetype off                  " required
let &termencoding=&encoding
set fileencodings=utf-8,gbk,GB2312

" set encoding=utf8,utf-8
set helplang=cn
set number
" 设置搜索标签
set tags=tags,~/work/trunk/src/tags,~/work/libs/tags
" tab 为 4 格
set tabstop=4
set shiftwidth=4
set expandtab

set nofoldenable
" C/C++ 设置相关
syntax on
set autoindent
set cindent
set showmatch

" 退格键
set backspace=indent,eol,start

" 插入模式下 Ctrl + E == ESC
imap <C-E> <ESC>
set report=1
" 忽略大小写搜索
" set ignorecase

" 不能忽略大小下搜索
" set noic

" 搜索时高亮 : hls = high light search
set hls

" 不创建备份文件
set nobackup
set nowritebackup
" 不创建临时文件
set noswapfile

" 列表显示所有符合条件的标识符 
map <C-]> :tselect <C-R>=expand("<cword>")<CR><CR>
map <C-]> g<C-]>

" F4功能键映射为添加作者信息的快捷键
map <F4> ms:call AddTitle()<cr>'s

set helplang=cn

function AddTitle()

    call append(0,"/*******************************************************************************")

    "call append(1,"#")

    call append(1," * Author :          xxxx")

    "call append(3,"#")

    call append(2," * Email :           ")

    "call append(5,"*")

    call append(3," * Last modified :   ".strftime("%Y-%m-%d %H:%M"))

    "call append(7,"#")

    call append(4," * Filename :        ".expand("%:t"))

    "call append(9,"#")

    call append(5," * Description :     ")

    ""call append(11,"#")

    call append(6," * *****************************************************************************/")

    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None

endf

" F4功能键映射为添加作者信息的快捷键

" php xdebug
let g:debuggerPort = 9010

" php 自动补全 
au FileType php call AddPHPFuncList()
function AddPHPFuncList()
    set dictionary-=/data/home/game/.vim/dict/php_funclist.txt dictionary+=/data/home/game/.vim/dict/php_funclist.txt
    set complete-=k complete+=k
endfunction

" tlist 配置 
" 默认打开Taglist 
" let Tlist_Auto_Open=1 
" let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
" 不同时显示多个文件的tag，只显示当前文件的 
let Tlist_Show_One_File = 1 
" 如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Exit_OnlyWindow = 1 
" 在右侧窗口中显示taglist窗口
let Tlist_Use_Left_Window = 1 

" winmanager 自动刷新目录 
nmap <F11> :TlistUpdate<cr>:BottomExplorerWindow<cr><F5><c-w><c-b>


let g:winManagerWindowLayout='TagList|FileExplorer'
nmap wm :WMToggle<cr>

inoremap jk <Esc>
nnoremap ; :
nnoremap <space> $

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdcommenter'
Plugin 'syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on    " required


" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Trigger configuration. Do not use <tab> if you use
"https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"syntax enable
"set background=dark
"colorscheme solarized
