" mappings (leader, tab moving) {{{
	let mapleader = "\<Space>"
	nmap <leader>h :nohlsearch<CR>
	nnoremap <leader>s :w<CR>
	nmap <leader>t :NERDTreeToggle<CR>
	nmap <leader>w <leader><leader>w
	nmap <leader>b <leader><leader>b
	nmap <leader>f <leader><leader>f
" navigacija po tabih z alt 1-9 {{{
		inoremap <A-1> <Esc>1gt
		inoremap <A-2> <Esc>2gt
		inoremap <A-3> <Esc>3gt
		inoremap <A-4> <Esc>4gt
		inoremap <A-5> <Esc>5gt
		inoremap <A-6> <Esc>6gt
		inoremap <A-7> <Esc>7gt
		inoremap <A-8> <Esc>8gt
		inoremap <A-9> <Esc>9gt
		nnoremap <A-1> 1gt
		nnoremap <A-2> 2gt
		nnoremap <A-3> 3gt
		nnoremap <A-4> 4gt
		nnoremap <A-5> 5gt
		nnoremap <A-6> 6gt
		nnoremap <A-7> 7gt
		nnoremap <A-8> 8gt
		nnoremap <A-9> 9gt
"END navigacija po tabih z alt 1-9 }}}
	nnoremap <C-h> :tabprevious<CR>
	nnoremap <C-l> :tabnext<CR>
	"spdnji dve ti omogočita d z alt-l ali -r premikaš tabe
	nnoremap <silent> <A-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
	nnoremap <silent> <A-l> :execute 'silent! tabmove ' . tabpagenr()<CR>
	nnoremap š <<
	nnoremap đ >>
	vnoremap š <
	vnoremap đ >


"END of mappings (leader, tab moving)}}}
" mappings {{{
	inoremap fj <Esc>
	vnoremap fj <Esc>
	nnoremap Y y$
	nnoremap ZS :w<CR>:so %<CR>
	nnoremap <C-v> "+p$
	inoremap <C-v> <Esc>"+p$
	nnoremap <S-Q> <C-]>
	nnoremap <A-o> o<Esc>
	nnoremap <A-S-o> O<Esc>

	"dobimo navaden regex
	nnoremap / /\v
	vnoremap / /\v
	nnoremap ? ?\v
	vnoremap ? ?\v
"END of mappings }}}
" abreviations - za napake v pisanju kode {{{
	cnoreabbrev help tab help
"END of abreviations }}}
" set BASIC setup {{{
	filetype plugin indent on
	syntax on
	set encoding=utf-8
	set autowrite                   " Automatically save before :next, :make etc.
	set autoread                    " Automatically reread changed files without asking me anything
 	set gcr=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
	set incsearch	"shows search matches as you type
	set showmatch "ko zapreš oklepaj ti pkaže katerega si zapru za sekundo
	set smartcase	"if caps, watch case
	set ignorecase "if all lower case, ignore case. Zato potrebuje 'sets martcase'
	set linebreak	"nastavitev, da ti ne lomi besede na koncu vrstice 
	set scrolloff=1
	set nrformats-=octal "Lahko povečjuješ ctr-a, ctr-x - na decimalna št.
	set laststatus=2
	set noswapfile                  " Don't use swapfile
	set nobackup                            " Don't create annoying backup files
	set splitright                  " Split vertical windows right to the current windows
	set gdefault "when search global is always on
	set modelines=0 "prevents some security exploits
	set visualbell "flash če pritisneš napačen gumb
	set cursorline 
"	set cursorcolumn 
	set ttyfast "improves smoothness of terminal
	set backspace=indent,eol,start "sets backspace like it should be
	set undofile "evan if you close file you can undo the session
"END BASIC setup }}}
" set list, tabs, indenting {{{
	" lists ---------------------------------------------------------------
	set list
	set listchars=tab:▸\ ,eol:¬

	" tabs and indenting ---------------------------------------------------
	set shiftwidth=4
	set softtabstop=4
	set tabstop=4
	set shiftround "ti pomaga ko stiskaš tabulator da se poravna
	filetype indent on
	set autoindent "naslednja vrstica je enako indentana kot prejšna
	set smartindent	"pogleda če lahko indentacijo popravi na kaj drugega
" END set list, tabs, indenting }}}
" set cmd, folding {{{
	" command line editing --------------------------------------------------
	set wildmenu
	set wildmode=full

	" folding --------------------------------------------------------------
	set foldmethod=marker
	set foldmarker={{{,}}}

	set showcmd                     " Show me what I'm typing
	set showmode                    " Show current mode
	set noshowmode "da neprikaže spodnje vrstice --vstavi--, ampak nedela
	set noshowcmd "ne dela
	set hidden
	set relativenumber
	set number
	set hlsearch	"highlights search results
	"Fixes slow O inserts (all) ---------------------------------------------
	set timeout
	set timeoutlen=1000
	set ttimeoutlen=100
" END set cmd, folding }}}
" let, gvim and vim custom setup {{{
	"costomization for vim-airline tab on the bottom
	let g:airline_theme = 'bubblegum'
	let g:airline_left_sep=''
	let g:airline_right_sep=''

	" gVim custom setup --------------------------------------------------
	if has('gui_running')
		set background=light
		colorscheme solarized

		set guioptions-=m  "remove menu bar
		set guioptions-=T  "remove toolbar
		set guioptions-=r  "remove right-hand scroll bar
		set guioptions+=LlRrb "removes the left side scroll bar
		set guioptions-=LlRrb "removes the left side scroll bar
	else
		colorscheme elflord
		set background=dark
	endif
" END let, gvim custom setup }}}
" vundle {{{
	" starter settings from Vundle {{{
		set nocompatible              " Turns off vi compatibility
		filetype off                  " required! temporary switches off file type detection

		set rtp+=~/.vim/bundle/vundle/
		call vundle#rc()

		" let Vundle manage Vundle
		" required! 
		Bundle 'gmarik/vundle'
	" END starter settings }}}

	" My bundles here:
	" SnipMate plugins {{{
		Bundle "MarcWeber/vim-addon-mw-utils"
		Bundle "tomtom/tlib_vim"
		Bundle "garbas/vim-snipmate"
		Bundle "honza/vim-snippets"
	" End SnipMate plugins }}}
	Bundle 'ctrlp.vim'
	" nastavitve za ctrlp {{{
		" Set no max file limit
		let g:ctrlp_max_files = 0
		" Search from current directory instead of project root
		let g:ctrlp_working_path_mode = 0

		" Ignore these directories
		set wildignore+=*/out/**
		set wildignore+=*/vendor/**

		" Search in certain directories a large project (hardcoded for now)
		cnoremap %proj <c-r>=expand('~/Projects/some-project')<cr>
		" ga = go api
		map <Leader>ga :CtrlP %proj/api/<cr>
		" gf = go frontend
		map <Leader>gf :CtrlP %proj/some/long/path/to/frontend/code/<cr>
		"END }}}
	Bundle 'https://github.com/terryma/vim-multiple-cursors'
	Bundle "mattn/emmet-vim"
	Bundle 'scrooloose/nerdtree'
	Bundle 'tpope/vim-fugitive'
	Bundle 'Lokaltog/vim-easymotion'
	Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
	Bundle 'tpope/vim-rails.git'
	Bundle 'vim-ruby/vim-ruby'
	Bundle 'L9'
	Bundle 'https://github.com/mileszs/ack.vim'
	Bundle 'https://github.com/tomtom/tcomment_vim'
	Bundle 'https://github.com/tpope/vim-surround'
	Bundle 'https://github.com/Shougo/neocomplcache.vim'
		"nastavitve za neocomplcache{{{
		let g:neocomplcache_enable_at_startup = 1
		let g:neocomplcache_enable_smart_case = 1
		let g:neocomplcache_min_syntax_length = 3
		let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
		" Enable heavy features.
		" Use camel case completion.
		"let g:neocomplcache_enable_camel_case_completion = 1
		" Use underbar completion.
		"let g:neocomplcache_enable_underbar_completion = 1

		" Define dictionary.
		let g:neocomplcache_dictionary_filetype_lists = {
			\ 'default' : '',
			\ 'vimshell' : $HOME.'/.vimshell_hist',
			\ 'scheme' : $HOME.'/.gosh_completions'
				\ }

		" Define keyword.
		if !exists('g:neocomplcache_keyword_patterns')
			let g:neocomplcache_keyword_patterns = {}
		endif
		let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

		" Plugin key-mappings.
		inoremap <expr><C-g>     neocomplcache#undo_completion()
		inoremap <expr><C-l>     neocomplcache#complete_common_string()

		" Recommended key-mappings.
		" <CR>: close popup and save indent.
		inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
		function! s:my_cr_function()
		return neocomplcache#smart_close_popup() . "\<CR>"
		" For no inserting <CR> key.
		"return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
		endfunction
		" <TAB>: completion.
		inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
		" <C-h>, <BS>: close popup and delete backword char.
		inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
		inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
		inoremap <expr><C-y>  neocomplcache#close_popup()
		inoremap <expr><C-e>  neocomplcache#cancel_popup()
		" Close popup by <Space>.
		"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

		" For cursor moving in insert mode(Not recommended)
		"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
		"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
		"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
		"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
		" Or set this.
		"let g:neocomplcache_enable_cursor_hold_i = 1
		" Or set this.
		"let g:neocomplcache_enable_insert_char_pre = 1

		" AutoComplPop like behavior.
		"let g:neocomplcache_enable_auto_select = 1

		" Shell like behavior(not recommended).
		"set completeopt+=longest
		"let g:neocomplcache_enable_auto_select = 1
		"let g:neocomplcache_disable_auto_complete = 1
		"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

		" Enable omni completion.
		autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
		autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
		autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
		autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
		autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

		" Enable heavy omni completion.
		if !exists('g:neocomplcache_omni_patterns')
		let g:neocomplcache_omni_patterns = {}
		endif
		let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
		let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
		let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

		" For perlomni.vim setting.
		" https://github.com/c9s/perlomni.vim
		let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
		"}}}
	Bundle 'git://git.wincent.com/command-t.git'
	Bundle 'https://github.com/bling/vim-airline'
	Bundle 'https://github.com/jiangmiao/auto-pairs'
	Bundle 'https://github.com/tpope/vim-endwise'
	Bundle 'https://github.com/gregsexton/MatchTag'
	" Git repos on your local machine (i.e. when working on your own plugin)

	"moji plugini !!!!
	" Bundle 'file:///Users/gmarik/path/to/plugin'
	" ...
	" ending and help of Vundle {{{
		filetype plugin indent on     " required! switches filetype detection back
		"
		" Brief help
		" :BundleList          - list configured bundles
		" :BundleInstall(!)    - install (update) bundles
		" :BundleSearch(!) foo - search (or refresh cache first) for foo
		" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
		"
		" see :h vundle for more details or wiki for FAQ
		" NOTE: comments after Bundle commands are not allowed.
	" END of ending and help of Vundle }}}
" END vundle }}}
