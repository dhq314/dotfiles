"不兼容vi模式
set nocompatible

"以desert为配色方案
colorscheme desert

"显示行号
set nu



execute pathogen#infect()
"语法高亮
syntax on
"打开插件
filetype plugin indent on



"按照C语法自动缩进
set cindent

"缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
"不使用tab,用空格代替tab
set expandtab

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

"实时显示搜索结果
set incsearch

nmap <C-d> :NERDTreeToggle<cr>

"代码被修改时重新载入
set autoread

"匹配括号规则，增加对HTML的<>
set matchpairs=(:),{:},[:],<:>

"显示长行
set display=lastline

"解决中文乱码
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,latin-1
"解决console输出乱码
language messages zh_CN.utf-8


if has("gui_running")
    set go=aAce                 " 去掉难看的工具栏和滑动条
    "set transparency=5          " 透明背景
    set guifont=Monaco:h13      " 设置默认字体为monaco
    set showtabline=2           " 开启自带的tab栏
    "set columns=140             " 设置宽
    "set lines=40                " 设置长
endif

