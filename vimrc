set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936
set termencoding=utf-8

set fencs=utf-8,gbk

set nu
set nocompatible
set hlsearch
filetype on

set history=1000
set background=dark
syntax on
syntax enable

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4

set showmatch
set fileformats=unix,dos

set showcmd
set showmode
set bg=dark

set helplang=cn

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

autocmd bufnewfile *.c,*.cpp,*.sh, call Header()
func Header()
	if &filetype == "sh"
		call setline(1,"\#########################################################################")
		call append(line("."),   "\# File Name    : ".expand("%"))
		call append(line(".")+1, "\# Author       : zhuguohui")
		call append(line(".")+2, "\# mail         : zhuguohui01@baidu.com")
		call append(line(".")+3, "\# Created Time : ".strftime("%Y-%m-%d %T"))
		call append(line(".")+4, "\#########################################################################")
		call append(line(".")+5, "")
		call append(line(".")+6, "\#!/bin/sh")
		call append(line(".")+7, "")
	endif

	if &filetype == "cpp"
		call setline(1, "\/*************************************************************************")
		call append(line("."),   "    > File Name    : ".expand("%"))
		call append(line(".")+1, "    > Author       : zhuguohui")
		call append(line(".")+2, "    > Mail         : zhuguohui01@baidu.com ")
		call append(line(".")+3, "    > Created Time : ".strftime("%Y-%m-%d %T"))
		call append(line(".")+4, " ************************************************************************/")
		call append(line(".")+5, "")
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif

	if &filetype == "c"
		call setline(1, "\/*************************************************************************")
		call append(line("."),   "    > File Name    : ".expand("%"))
		call append(line(".")+1, "    > Author       : zhuguohui")
		call append(line(".")+2, "    > Mail         : zhuguohui01@baidu.com ")
		call append(line(".")+3, "    > Created Time : ".strftime("%Y-%m-%d %T"))
		call append(line(".")+4, " ************************************************************************/")
		call append(line(".")+5, "")
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif

	normal G
	normal o
endfunc

autocmd bufnewfile *.py, call HeaderPython()
function HeaderPython()
		call setline(1, "\#! /usr/bin/env python")
		call append(line("."), "\# -*- coding:utf-8 -*-")
		call append(line(".")+1, "")
		call append(line(".")+2,"#########################################################################")
		call append(line(".")+3,   "\# File Name    : ".expand("%"))
		call append(line(".")+4, "\# Author       : zhuguohui")
		call append(line(".")+5, "\# mail         : zhuguohui01@baidu.com")
		call append(line(".")+6, "\# Created Time : ".strftime("%Y-%m-%d %T"))
		call append(line(".")+7, "\#########################################################################")
		call append(line(".")+8, "")
		normal G
		normal o
endfunction

"let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>

let Tlist_Auto_Open=1

set cscopequickfix=s-,c-,d-,i-,t-,e-
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
filetype plugin indent on
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
