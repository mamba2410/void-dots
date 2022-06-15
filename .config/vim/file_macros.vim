
" ########## Keypress Macros ##########

" Adding auto key maps to add for loops and all that
autocmd filetype c inoremap ~f for(){<CR><++><CR>}<CR><esc>3k/(<CR>:noh<CR>a
autocmd filetype c inoremap ~w while(){<CR><++><CR>}<CR><esc>3k/(<CR>:noh<CR>a
autocmd filetype c inoremap ~i if(){<CR><++><CR>}<esc>3k0/)<CR>:noh<CR>a
autocmd filetype c inoremap ~e if(){<CR><++><CR>} else {<CR><++><CR>}<esc>5k0/(<CR>:noh<CR>a
autocmd filetype c inoremap ~s switch(){<CR>case <++>;break;<CR>default:break;<CR>}<esc>3k0/(<CR>:noh<CR>a

" Latex things, like autocompile and remaps
" autocmd BufWritePost *.tex !pdflatex -output-directory pdf %

autocmd filetype tex inoremap ~eq \begin{equation}<CR><CR>\end{equation}<CR><++><esc>kkA
autocmd filetype tex inoremap ~*eq \begin{equation*}<CR><CR>\end{equation*}<CR><++><esc>kkA
autocmd filetype tex inoremap ~c \chapter{}<CR><tab><++><esc>k0/{<CR>:noh<CR>a
autocmd filetype tex inoremap ~s \section{}<CR><tab><++><esc>k0/{<CR>:noh<CR>a
autocmd filetype tex inoremap ~ss \subsection{}<CR><tab><++><esc>k0/{<CR>:noh<CR>a
autocmd filetype tex inoremap ~f \begin{figure}[h!]<CR>\includegraphics[width=\linewidth]{}<CR>\caption{<++>}<CR>\label{fig_<++>}<CR>\end{figure}<CR><++><esc>4k/{<CR>:noh<CR>a
autocmd filetype tex inoremap ~F \begin{figmulticol}<CR>\cCRing<CR>\includegraphics[width=\linewidth]{}<CR>\captionof{figure}{<++>}<CR>\label{fig_<++>}<CR>\end{figmulticol}<CR><++><esc>4k/{<CR>:noh<CR>a
autocmd filetype tex inoremap ~a \begin{align}<CR><CR>\end{align}<CR><++><esc>kkA
autocmd filetype tex inoremap ~*a \begin{align*}<CR><CR>\end{align*}<CR><++><esc>kkA
autocmd filetype tex inoremap ~bi \begin{itemize}<CR>\item <CR>\end{itemize}<CR><++><esc>kkA
autocmd filetype tex inoremap ~be \begin{enumerate}<CR>\item <CR>\end{enumerate}<CR><++><esc>kkA
autocmd filetype tex inoremap ~m \begin{multicols}{2}<CR><CR>\end{multicols}<esc>kA
autocmd filetype tex inoremap ~cm \chapter{}<CR>\begin{multicols}{2}<CR><++><CR>\end{multicols}<esc>3k0/{<CR>:noh<CR>a

