" -- Environment Variables --------------------------------------- {{{
source $HOME/.my_vim_env
"sets the following variables:
"$RC_DIR $VIM_DIR $WRYNVIMRC $WRYNBASH $MYBASHRC $WEBBROWSER

let mapleader = "\\"
"let localmapleader = ','

" 1) Load Vundle first
source $VIM_DIR/vundle.vim

" 2) Order insensitive plugins
source $VIM_DIR/global_sets.vim
source $VIM_DIR/file_formatting.vim
source $VIM_DIR/edit_rc.vim
source $VIM_DIR/abbreviations.vim
source $VIM_DIR/window_pane_navigation.vim
source $VIM_DIR/my_colors.vim

" 3) Order sensitive plugins
source $VIM_DIR/rd_formatting.vim " Must load after file_formatting

" <SPACE> to execute macro on q
nnoremap <Space> @q

" Q to replace current line/selection with bash execution
vnoremap Q !$SHELL<CR>
nnoremap Q !!$SHELL<CR>

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
