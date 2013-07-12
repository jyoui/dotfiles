set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" 使用mapleader , 默认为\
let mapleader=","

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'
" install unite.vim before vim filer
NeoBundle 'Shougo/vimfiler'

"会在echo位置显示文档
NeoBundle 'Shougo/echodoc'
let g:echodoc_enable_at_startup = 1

"hex编辑器
NeoBundle 'Shougo/vinarise'
let g:vinarise_enable_auto_detect = 1

"已经很有实用价值的vim shell
NeoBundle 'Shougo/vimshell'


" 补全与snippet模块
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'

NeoBundle 'Rip-Rip/clang_complete'
"快捷键tab的占用,暂时禁掉
"NeoBundle 'ervandew/supertab'

"可以使用 :e sudo:/etc/file来提示输入密码,编辑文件,用sudoedit,这个插件没用
"NeoBundle 'vim-scripts/sudo.vim'
"
NeoBundle 'vim-scripts/ZenCoding.vim'
"let g:user_zen_expandabbr_key = '<c-v>'

"强大的插件, 使用ruby与ghc交互, 在buffer中执行ghci,速度较快,不过貌似有bug
NeoBundle 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM'

autocmd FileType haskell nmap <C-c><C-l> :GhciRange<CR>
autocmd FileType haskell vmap <C-c><C-l> :GhciRange<CR>
autocmd FileType haskell nmap <C-c><C-f> :GhciFile<CR>
autocmd FileType haskell nmap <C-c><C-r> :GhciReload<CR>


"速度还是太慢!要是不慢就可以实用了
"支持多种repl, python ghci bash, 可以在buffer中出现repl,但目前还无可用性
NeoBundle 'vim-scripts/REPL--Khorev'

NeoBundle 'vim-scripts/VimClojure'


NeoBundle 'vim-scripts/cscope.vim'

"python的一些增强
NeoBundle 'vim-scripts/python.vim'
"NeoBundle 'gg/python.vim' "bundle插件限制,还不能处理同名repo插件

"vim显示mark插件
NeoBundle 'vim-scripts/vim-signature'
"略有点不好的4秒刷新一次显示的设计
"NeoBundle 'zakj/vim-showmarks'
NeoBundle 'vim-scripts/project.tar.gz'

"使用tagbar先
"NeoBundle 'vim-scripts/taglist.vim'

"NeoBundle 'DavidFeng/Conque-Shell'
"NeoBundle 'tarruda/vim-conque-repl'

" grep alter: ack
NeoBundle 'mileszs/ack.vim'

" vim的语法检查
"NeoBundle 'scrooloose/syntastic'

" protobuf vim语法插件
NeoBundle 'uarun/vim-protobuf'

" for c develop
" ctags
NeoBundle 'majutsushi/tagbar'
" tagbar
nnoremap <silent> <Leader>tt :TagbarToggle<CR>

NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
" C-A C-X来修改时间日期 数字...
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-unimpaired'

"高级替换查找工具,英文写作使用的,暂时不使用...
"NeoBundle 'tpope/vim-abolish'
"添加/删除注释 使用: \\\ \\ \\u
NeoBundle 'tpope/vim-commentary'

" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github



" git 的vim包装 Gbrowser Gmove Gremove Gblame Gcommit等操作
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'Lokaltog/vim-easymotion'

" 和zen coding类似的插件
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" 这两个键默认imap和nmap下都没有被绑定
"let g:sparkupExecuteMapping = '<c-d>'
"let g:sparkupNextMapping ='<c-f>'

NeoBundle 'godlygeek/tabular'
" c-t后输入分隔符如, = 然后回车. 不知道还有没有更方便的方法
noremap <c-c> :Tabularize /

" c-c Tabularize对齐 c-d c-f: sparkup的绑定 c-v zen coding的
" c-e 系列 rst的绑定
" c-p 文件模糊查找的绑定

"与neo补全系列的tab enter等快捷键冲突,暂时禁用
"NeoBundle 'SirVer/ultisnips'
" david's plugins for haskell
NeoBundle 'dag/vim2hs'
NeoBundle 'ujihisa/neco-ghc'

" need cabal install ghcmod
NeoBundle 'eagletmt/ghcmod-vim'
" cabal install hdevtools
NeoBundle 'bitc/vim-hdevtools'
"NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'pbrisbin/html-template-syntax'

NeoBundle 'kien/ctrlp.vim'
let g:ctrlp_use_caching=1

" for reStructuredText
NeoBundle 'Rykka/riv.vim'

" 必须有的相对/绝对行号显示插件
NeoBundle 'myusuf3/numbers.vim'

" vim会话保存功能加强版
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'


" 自动补全括号的插件
NeoBundle 'Raimondi/delimitMate'


" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'VOoM'

"
NeoBundle 'git://git.wincent.com/command-t.git'
NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim'


" end of plugins section

filetype plugin indent on     " Required!


" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
" neo bundle更新后,原来的提醒方式也变了,可以直接按y选择安装
NeoBundleCheck

" python的#缩进设置
"autocmd FileType python inoremap # X<c-h>#<space>
autocmd FileType python inoremap # X<c-h>#

" begin of 补全与snippet模块
" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0 " 禁掉冲突的插件
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'


" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion, which require computational power and may stall the vim.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
"暂时不使用ruby的补全
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'


" neo snippet的选项
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" SuperTab like snippets behavior.
" neo补全默认启用一个非常普通的tab,那个不好;然后禁用的supertab like的tab也不如
" 这个tab给力
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'

" endof 补全和snippet设置

"clang complete设置
"let g:clang_complete_auto = 1 " 不好用


" begin ctrlp
"nnoremap <silent> <C-t> :CtrlP<CR>
"nnoremap <silent> <C-r> :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|.pyc$\|.hi$\|.o$'}
" end ctrlp

set number
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set tabstop=4

map U gU
" 开启显示不想要的空白
set list
set listchars=tab:>·,trail:·


set ignorecase
set smartcase
set smartindent
set backspace=indent,eol,start

" tab与空格
set smarttab
set tabstop=4
set expandtab " 扩展tab with合适数量的空格
set softtabstop=4 " 处理空格的时候就像是在处理tab一样,必开的选项
set shiftwidth=4 " 自动缩进时缩进的空格数量; with cindent, >> <<, etc.
set shiftround
let &showbreak='^'

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
set clipboard=unnamed " this is ms windows only option, and mac os x;
"set clipboard=unnamedplus " in x windows, use this. after 7.3.74

nnoremap j gj
nnoremap k gk


" 切换窗口
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
nmap <C-H> <C-W>h

" 高亮当前行
"set cursorline

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

imap <F5> <Esc>:r! date<CR>o
nmap <F5> <Esc>:r! date<CR>
" shougo写了很多vim插件啊...
let g:vimfiler_as_default_explorer = 1

" set guifont=Ubuntu\ Mono\ 16
set guifont=Menlo\ Regular:h15

"settings for mac os x, for os x's /usr/share/vim/vimrc didn't set some
"important options

if has("syntax")
    syntax on
endif

" fix color on popup menu highlight
set background=dark

" 高亮搜索内容
"set hlsearch

au BufNewFile,BufRead Tupfile,*.tup setf tup

" vim常用命令备忘:
" 删除所有的行末尾的空白
" %s /\s\+$// 或者省略掉替换对象: %s /\s\+$
