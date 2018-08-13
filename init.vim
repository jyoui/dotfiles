"=============================================================================
" dark_powered.vim --- Dark powered mode of SpaceVim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================


" SpaceVim Options: {{{
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1

" logo，最近文件，当前路径的文件夹查看器
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1

" 启用nerdtree
let g:spacevim_filemanager = 'nerdtree'
" }}}

" SpaceVim Layers: {{{
" }}}

" 占用掉我高频使用的s 不能忍
let g:spacevim_windows_leader = 'S'

let g:spacevim_max_column = 80

let g:python3_host_prog='/usr/local/bin/python3'

set clipboard=unnamedplus

set wrap

" split 页面之间的跳转
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

nnoremap <F2> :tabprevious<CR>
nnoremap <F3> :tabnext<CR>

"2017-05-04 Thu 14:50
nnoremap <F5> "=strftime("%Y-%m-%d %a %H:%M")<CR>p
inoremap <F5> <C-R>=strftime("%H:%M")<CR>

nmap U gU
nmap W :w<cr>
nmap S :w<cr>
nmap Q :q<cr>
nmap X :x<cr>

noremap W :w<cr>
noremap S :w<cr>
noremap Q :q<cr>
noremap X :x<cr>


