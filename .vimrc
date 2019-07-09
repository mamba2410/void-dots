" .vimrc

" Get the defaults that most users want.
"source $VIMRUNTIME/defaults.vim

" Set a bunch of settings
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
syn sync fromstart
set t_Co=256
colorscheme custom
set ts=4
set shiftwidth=4

" Set filetypes when file is opened
autocmd BufNewFile,BufReadPost *.c set filetype=c
autocmd BufNewFile,BufReadPost *.tex set filetype=tex

" Needed itherwise vim leaves temp files in the current directory
set backupdir=~/.vim
set noundofile

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
vnoremap <C-c> "+y
map <C-p> "+P

" Set a bunch of leader things
" Default leader is backslash (\)
let mapleader = " "
map <leader>h <esc>:noh<enter>


" Normal mode remaps
nnoremap <esc> :noh<enter><esc>
nnoremap <leader><left>		gT
nnoremap <leader>h			gT	
nnoremap <leader><right>	gt
nnoremap <leader>l			gt

" Navigating with guides (from LukeSmithxyz)
"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
"vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><enter>"_c4l


" Auto run commands when things change
autocmd BufWritePre * $s/\s\+$//e		" Remove whitespace at end of lines on write
autocmd BufWritePost ~/.Xresources !xrdb %

" ########## Keypress Macros ##########

" Adding auto key maps to add for loops and all that
autocmd filetype c inoremap ~f for(){<enter><++><enter>}<enter><esc>3k/(<enter>:noh<enter>a
autocmd filetype c inoremap ~w while(){<enter><++><enter>}<enter><esc>3k/(<enter>:noh<enter>a
autocmd filetype c inoremap ~i if(){<enter><++><enter>}<esc>3k0/)<enter>:noh<enter>a
autocmd filetype c inoremap ~e if(){<enter><++><enter>} else {<enter><++><enter>}<esc>5k0/(<enter>:noh<enter>a
autocmd filetype c inoremap ~s switch(){<enter>case <++>;break;<enter>default:break;<enter>}<esc>3k0/(<enter>:noh<enter>a

" Latex things, like autocompile and remaps
autocmd BufWritePost *.tex !pdflatex -output-directory pdf %

autocmd filetype tex inoremap ~eq \begin{equation}<enter><enter>\end{equation}<enter><++><esc>kkA
autocmd filetype tex inoremap ~*eq \begin{equation*}<enter><enter>\end{equation*}<enter><++><esc>kkA
autocmd filetype tex inoremap ~c \chapter{}<enter><tab><++><esc>k0/{<enter>:noh<enter>a
autocmd filetype tex inoremap ~s \section{}<enter><tab><++><esc>k0/{<enter>:noh<enter>a
autocmd filetype tex inoremap ~ss \subsection{}<enter><tab><++><esc>k0/{<enter>:noh<enter>a
autocmd filetype tex inoremap ~f \begin{figure}[h!]<enter>\includegraphics[width=\linewidth]{}<enter>\caption{<++>}<enter>\label{fig_<++>}<enter>\end{figure}<enter><++><esc>4k/{<enter>:noh<enter>a
autocmd filetype tex inoremap ~F \begin{figmulticol}<enter>\centering<enter>\includegraphics[width=\linewidth]{}<enter>\captionof{figure}{<++>}<enter>\label{fig_<++>}<enter>\end{figmulticol}<enter><++><esc>4k/{<enter>:noh<enter>a
autocmd filetype tex inoremap ~a \begin{align}<enter><enter>\end{align}<enter><++><esc>kkA
autocmd filetype tex inoremap ~*a \begin{align*}<enter><enter>\end{align*}<enter><++><esc>kkA
autocmd filetype tex inoremap ~bi \begin{itemize}<enter>\item <enter>\end{itemize}<enter><++><esc>kkA
autocmd filetype tex inoremap ~be \begin{enumerate}<enter>\item <enter>\end{enumerate}<enter><++><esc>kkA
autocmd filetype tex inoremap ~m \begin{multicols}{2}<enter><enter>\end{multicols}<esc>kA
autocmd filetype tex inoremap ~cm \chapter{}<enter>\begin{multicols}{2}<enter><++><enter>\end{multicols}<esc>3k0/{<enter>:noh<enter>a


