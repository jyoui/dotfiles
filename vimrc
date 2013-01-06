set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
"NeoBundle 'Shougo/neobundle.vim'

NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'vim-scripts/ZenCoding.vim'
NeoBundle 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM'
NeoBundle 'vim-scripts/REPL--Khorev'

NeoBundle 'vim-scripts/cscope.vim'
"使用tagbar先
"NeoBundle 'vim-scripts/taglist.vim'

" grep alter: ack
NeoBundle 'mileszs/ack.vim'

" vim的语法检查
NeoBundle 'scrooloose/syntastic'

NeoBundle 'ervandew/supertab'

" for c develop
" ctags
NeoBundle 'majutsushi/tagbar'

NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
" C-A C-X来修改时间日期 数字...
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-unimpaired'

"高级替换查找工具,英文写作使用的,暂时不使用...
"NeoBundle 'tpope/vim-abolish'
"添加/删除注释 使用: \\\ \\ \\u
NeoBundle 'tpope/vim-commentary'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'
" install unite.vim before vim filer
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/echodoc'
NeoBundle 'Shougo/vinarise'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplcache'
" sudo vim问题: 1.据说这是不推荐的用法 2.设置always_set_home可以避免错误提示
" 3. 编辑sudo使用sudo visudo, 编辑其他文件建议使用sudoedit

" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" david's plugins for haskell
NeoBundle 'dag/vim2hs'
NeoBundle 'ujihisa/neco-ghc'

" need cabal install ghcmod
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'bitc/vim-hdevtools'
"NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'pbrisbin/html-template-syntax'
NeoBundle 'godlygeek/tabular'
NeoBundle 'SirVer/ultisnips'

"for reStructuredText
NeoBundle 'Rykka/riv.vim'

" 必须有的相对/绝对行号显示插件
NeoBundle 'myusuf3/numbers.vim'

"vim会话保存功能加强版
NeoBundle 'xolox/vim-session'

" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'

NeoBundle 'VOoM'
" Non github repos
" removed not used scripts
" NeoBundle 'git://git.wincent.com/command-t.git'
" Non git repos
" temp remove
" NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

filetype plugin indent on     " Required!


" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif


set number
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set tabstop=4

map U gU
" 开启显示不想要的空白
set list
"set listchars=tab:→·,trail:·,eol:<
"set listchars=tab:>·,trail:·,eol:<
set listchars=tab:>·,trail:·


set ignorecase
set smartcase

set smartindent

set backspace=indent,eol,start

" tab与空格
set smarttab
set tabstop=4
set expandtab " 扩展tab with合适数量的空白
set softtabstop=4 " 处理空格的时候就像是在处理tab一样,必开的选项
set shiftwidth=4 " 自动缩进时缩进的空格数量; with cindent, >> <<, etc.
set shiftround
let &showbreak='+--+ '

" vim提示栏的消息显示长度
set shortmess=a " 常用的选项: 空白 a at

" 空白线
set textwidth=80
"set colorcolumn=81 "or set it directly
set colorcolumn=81
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
" 另外还有一种高亮超过参考线的方法
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" clipboard
"set clipboard=unnamed " this is ms windows only option,
set clipboard=unnamedplus " in x windows, use this. after 7.3.74

nnoremap j gj
nnoremap k gk


" 切换窗口
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
"map <C-L> <C-W>l<C-W>_
"map <C-H> <C-W>h<C-W>_

" 高亮当前行
set cursorline

" 空格键翻页
nmap <Space> <C-F>
nmap <S-Space> <C-B>
nmap Y y$

nmap zo zO

autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview
" 使用插件版session
"let g:session_autosave = 1

"F1 - F12 vim按键绑定功能分配
"F1 不使用,保留很多地方用到的帮助功能
nmap <F2> :tabprevious<CR>
nmap <F3> :tabnext<CR>
" map f4 to tabedit

"F4这么好的位置就先给Riv吧,不过貌似这个可以不作为全局,之用在riv中的
"let g:riv_global_leader="<F4>"

imap <F5> <Esc>:r! date<CR>o
nmap <F5> <Esc>:r! date<CR>
" shougo写了很多vim插件啊...
let g:vimfiler_as_default_explorer = 1

" 使用mapleader , 默认为\
let mapleader=","
