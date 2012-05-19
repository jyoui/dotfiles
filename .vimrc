"begin use my vundle ;-D

set t_Co=256

if has("eval")
	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()

	"use vundle manage vundle, and also required!
	Bundle 'gmarik/vundle'
    Bundle 'MarcWeber/vim-addon-mw-utils'
    Bundle 'tomtom/tlib_vim'
    if executable('ack')
        Bundle 'mileszs/ack.vim'
    endif

	"vim script repos
	Bundle 'L9'
	Bundle 'FuzzyFinder'
    Bundle 'gtags.vim'

	Bundle 'Acpp'
	Bundle 'clang'
	Bundle 'clang-complete'
	Bundle 'taglist.vim'
	Bundle 'c.vim'
	Bundle 'echofunc.vim'
	"Bundle 'bufexplorer.zip'

	"git hub repos
	Bundle 'Lokaltog/vim-easymotion'
	Bundle 'abudden/TagHighlight'
	Bundle 'ervandew/supertab'

	"from spf13
	Bundle 'spf13/vim-colors'
	Bundle 'tpope/vim-surround'
	Bundle 'AutoClose'
	Bundle 'vim-scripts/sessionman.vim'
	Bundle 'matchit.zip'
	Bundle 'Lokaltog/vim-powerline'
	Bundle 'godlygeek/csapprox'
	Bundle 'corntrace/bufexplorer'

	Bundle 'scrooloose/syntastic'
	Bundle 'garbas/vim-snipmate'
	Bundle 'spf13/snipmate-snippets'
	if filereadable(expand("~/.vim/bundle/snipmate-snippets/snippets/support_functions.vim"))
		source ~/.vim/bundle/snipmate-snippets/snippets/support_functions.vim
	endif
    Bundle 'tpope/vim-fugitive'
	Bundle 'scrooloose/nerdcommenter'
	Bundle 'godlygeek/tabular'
	Bundle 'majutsushi/tagbar'
	Bundle 'Shougo/neocomplcache'

	filetype plugin indent on
endif


set number
set nospell
color murphy
set clipboard=unnamed
syntax on
set smartindent

"from spf13

au BufWinLeave *.* silent! mkview
au BufWinEnter *.* silent! loadview

set cursorline
set showcmd
if has('statusline')
	set laststatus=2
      	set statusline=%<%f\    " Filename
        set statusline+=%w%h%m%r " Options
        set statusline+=%{fugitive#statusline()} "  Git Hotness
	set statusline+=\ [%{&ff}/%Y] " filetype
        set statusline+=\ [%{getcwd()}] " current dir
	set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif

set backspace=indent,eol,start
set linespace=0
set showmatch
set incsearch
set hlsearch
set winminheight=0
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set scrolljump=5
set scrolloff=3
set foldenable
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:.

set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set pastetoggle=<F12>

let mapleader=','

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

nnoremap j gj
nnoremap k gk

map zl zL
map zh zH

inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <C-d>      pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menu,preview,longest


set tags=./tags;/,~/.vimtags


" Make it so AutoCloseTag works for xml and xhtml files as well
au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
nmap <Leader>ac <Plug>ToggleAutoCloseMappings


map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>


if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:<CR>
	vmap <Leader>a: :Tabularize /:<CR>
	nmap <Leader>a:: :Tabularize /:\zs<CR>
	vmap <Leader>a:: :Tabularize /:\zs<CR>
	nmap <Leader>a, :Tabularize /,<CR>
	vmap <Leader>a, :Tabularize /,<CR>
	nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
	vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
	inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
	function! s:align()
		let p = '^\s*|\s.*\s|\s*$'
		if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
			let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
			let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
			Tabularize/|/l1
			normal! 0
			call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
		endif
	endfunction
endif



nmap <leader>b :BufExplorer<CR>

nnoremap <silent> <leader>tt :TagbarToggle<CR>
