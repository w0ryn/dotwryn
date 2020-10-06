" -- Environment Variables --------------------------------------- {{{
source $HOME/.wryn/env/env.vim
"sets the following variables:
"$RC_DIR $VIM_DIR $WRYNVIMRC $WRYNBASH $MYBASHRC $WEBBROWSER

set encoding=utf-8

" set italics characters
set t_ZH=[3m
set t_ZR=[23m

let mapleader = "\\"
"let localmapleader = ','

" Load Vundle first
if isdirectory(expand("$HOME/.vim/bundle/Vundle.vim"))
	source $VIM_DIR/vundle.vim
endif

source $VIM_DIR/global_sets.vim
source $VIM_DIR/file_formatting.vim
source $VIM_DIR/edit_rc.vim
source $VIM_DIR/abbreviations.vim
source $VIM_DIR/window_pane_navigation.vim
source $VIM_DIR/my_colors.vim

augroup general_bindings
" {{{
	" <SPACE> to execute macro on q
	nnoremap <Space> @q
	
	" Q to replace current line/selection with bash execution
	vnoremap Q !$SHELL<CR>
	nnoremap Q !!$SHELL<CR>
	
	" \d to insert formatted date before/after cursor
	nnoremap <Leader>di :let @d = system("date '+%A, %B %-d, %Y'")<CR>i<C-r>d<BS> <esc>
	nnoremap <Leader>da :let @d = system("date '+%A, %B %-d, %Y'")<CR>a <C-r>d<BS><esc>
	
	" \c \v to copy/paste from xclip
	" @TODO: learn how to freaking compile vim with x11 compatibility so these
	"        aren't necessary :)
	vnoremap <Leader>c :w !xclip<CR><CR>
	nnoremap <Leader>v o<esc>!!xclip -o<CR>
	
	" \b for git blame
	nnoremap <Leader>b :set termwinsize=15*0<BAR>:execute "terminal git blame -L " .eval(line(".")-5) . ",+10 %"<BAR>:set termwinsize&<CR>
	
	" \s previous selection command
	nnoremap <Leader>sq :'<,'>
	nnoremap <Leader>sc :'<,'>w !xclip<CR><CR>
	
	" \q for `q:`
	nnoremap <Leader>q q:
	
	" \t for rerun last 'test' command:
	nnoremap <Leader>t q:?test<CR><CR>
	
	" \f for fold
	nnoremap <Leader>f z
	nnoremap <Leader>f z
	
	" append current line to the line below
	nnoremap <Leader>j ddpkJ
	
	" - to move the current line one below where it is
	nnoremap - :m +1 <CR> 
	nnoremap _ :m -2 <CR>
	
	" - (insert mode) set current word to upper-case
	inoremap <c-u> <esc>viwUea
	
" }}}
augroup end
