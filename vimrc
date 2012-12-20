set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
"NeoBundle 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplcache'

" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" david's plugins for haskell
NeoBundle 'dag/vim2hs'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'eagletmt/ghcmod-vim'
"NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'pbrisbin/html-template-syntax'
NeoBundle 'godlygeek/tabular'
NeoBundle 'SirVer/ultisnips'

"for reStructuredText
NeoBundle 'Rykka/riv.vim'

" 必须有的相对/绝对行号显示插件
NeoBundle 'myusuf3/numbers.vim'


" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
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

imap <F5> <Esc>:r! date<CR>o
nmap <F5> <Esc>:r! date<CR>

autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview
