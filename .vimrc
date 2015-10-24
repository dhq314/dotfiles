" 不兼容 vi 模式
set nocompatible
filetype off        "require

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'Yggdroot/indentLine'
Bundle 'jiangmiao/auto-pairs'

Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
"""


"""
" The NERD Tree
" https://github.com/scrooloose/nerdtree
"""
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

"""
" vim-airline
" https://github.com/bling/vim-airline
"""
set laststatus=2

"""
" Tagbar
" https://github.com/majutsushi/tagbar
"""
"nmap <Leader>tb :TagbarToggle<CR>              "快捷键设置
let g:tagbar_ctags_bin='/usr/local/bin/ctags'   "ctags程序的路径
let g:tagbar_width=30                           "窗口宽度的设置
map <F3> :Tagbar<CR>
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()"

"""
" Dracula Theme
" https://github.com/zenorocha/dracula-theme
"""
let g:dracula_italic=1

"""
" Syntastic
" https://github.com/scrooloose/syntastic
"""
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black
" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 10
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
" \s
nnoremap <Leader>s :call ToggleErrors()<cr>         "

"""
" CtrlP
" https://github.com/kien/ctrlp.vim
"""
let g:ctrlp_open_new_file = 't'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1



"语法高亮
syntax on

"color Dracula
colorscheme Dracula

" 设置字体
if has("win32")
    set guifont=Courier_New:h10
else
    set guifont=Monaco:h13      " 设置默认字体为monaco
endif

"显示行号
" set nu
set number

"打开插件
filetype plugin indent on

"按照C语法自动缩进
set cindent

"缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 不使用tab,用空格代替tab
set expandtab

" 设置自动缩进
set autoindent
" 设置智能缩进
set smartindent 

"不产生备份文件
set nobackup
set nowb
"不产生swp文件
set noswapfile

"突出当前行
set cursorline

"突出当前列
set cursorcolumn

"查找文本高亮
set hls

"显示当前位置
set ruler

"显示括号对应
set showmatch

" Show the mode
set showmode 

" 实时显示搜索结果
set incsearch

"代码被修改时重新载入
set autoread

" 自动切换目录
set autochdir

"匹配括号规则，增加对HTML的<>
set matchpairs=(:),{:},[:],<:>

"显示长行
set display=lastline

"解决中文乱码
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,chinese,latin-1
set helplang=cn
"解决console输出乱码
language messages zh_CN.utf-8


if has("gui_running")
    " 隐藏菜单栏
    set guioptions-=m
    set guioptions-=T
    " 菜单乱码
    if has("win32")
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
    endif
    set showtabline=2           " 开启自带的tab栏
endif

