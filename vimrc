" ��ʾ�к�
set nocompatible              " be iMproved, required
filetype off                  " required
let &termencoding=&encoding
set fileencodings=utf-8,gbk,GB2312

" set encoding=utf8,utf-8
set helplang=cn
set number
" ����������ǩ
set tags=tags,~/work/trunk/src/tags,~/work/libs/tags
" tab Ϊ 4 ��
set tabstop=4
set shiftwidth=4
set expandtab

set nofoldenable
" C/C++ �������
syntax on
set autoindent
set cindent
set showmatch

" �˸��
set backspace=indent,eol,start

" ����ģʽ�� Ctrl + E == ESC
imap <C-E> <ESC>
set report=1
" ���Դ�Сд����
" set ignorecase

" ���ܺ��Դ�С������
" set noic

" ����ʱ���� : hls = high light search
set hls

" �����������ļ�
set nobackup
set nowritebackup
" ��������ʱ�ļ�
set noswapfile

" �б���ʾ���з��������ı�ʶ�� 
map <C-]> :tselect <C-R>=expand("<cword>")<CR><CR>
map <C-]> g<C-]>

" F4���ܼ�ӳ��Ϊ���������Ϣ�Ŀ�ݼ�
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

" F4���ܼ�ӳ��Ϊ���������Ϣ�Ŀ�ݼ�

" php xdebug
let g:debuggerPort = 9010

" php �Զ���ȫ 
au FileType php call AddPHPFuncList()
function AddPHPFuncList()
    set dictionary-=/data/home/game/.vim/dict/php_funclist.txt dictionary+=/data/home/game/.vim/dict/php_funclist.txt
    set complete-=k complete+=k
endfunction

" tlist ���� 
" Ĭ�ϴ�Taglist 
" let Tlist_Auto_Open=1 
" let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
" ��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ��� 
let Tlist_Show_One_File = 1 
" ���taglist���������һ�����ڣ����˳�vim 
let Tlist_Exit_OnlyWindow = 1 
" ���Ҳര������ʾtaglist����
let Tlist_Use_Left_Window = 1 

" winmanager �Զ�ˢ��Ŀ¼ 
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
