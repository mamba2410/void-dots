" Vim color file
" Maintainer:	Callum McGregor
" Last Change:	2019 06 08

hi clear


" Normal should come first
hi Normal	cterm=NONE		ctermfg=8	ctermbg=0	guifg=fg	guibg=bg

" Tell Vim if the background is light or dark
set background=dark

" Set the scheme name
" TODO: Come up with something more creative
let g:colors_name = "custom"

" Set the cursor colours
" Unsure why this doesn't work as expected
hi Cursor	cterm=NONE		ctermfg=bg	ctermbg=fg   	guifg=fg	guibg=bg
hi lCursor	cterm=NONE		ctermfg=bg	ctermbg=fg   	guifg=fg	guibg=bg

" Setting major highlight groups
" Since t_Co=16 is set, can use all 16 Xresources colours
" Note: color0 should be reserved for background, and color8 is reserved for
" foreground in Xresources
hi Comment    	cterm=NONE ctermfg=7	gui=NONE guifg=red2
hi Constant  	cterm=NONE ctermfg=4	gui=NONE guifg=green3
hi Identifier	cterm=NONE ctermfg=9	gui=NONE guifg=cyan4
hi Operator	 	cterm=NONE ctermfg=3
hi PreProc   	cterm=NONE ctermfg=15	gui=NONE guifg=magenta3
hi Special   	cterm=NONE ctermfg=14	gui=NONE guifg=deeppink
hi Statement 	cterm=bold ctermfg=5	gui=bold guifg=blue
hi Type	     	cterm=NONE ctermfg=1	gui=bold guifg=blue

" Now to set Minor highlight groups
hi DiffAdd    	ctermbg=LightBlue    	guibg=LightBlue
hi DiffChange 	ctermbg=LightMagenta 	guibg=LightMagenta
hi DiffDelete 	ctermfg=Blue			ctermbg=7 gui=bold guifg=Blue guibg=LightCyan
hi DiffText   	ctermbg=Red	   			cterm=bold gui=bold guibg=Red
hi Directory  	ctermfg=DarkBlue	   	guifg=Blue
hi Error		ctermfg=fg				ctermbg=7
hi ErrorMsg   	ctermfg=fg	   			ctermbg=7
hi FoldColumn 	ctermfg=DarkBlue	   	ctermbg=Grey     guibg=Grey	    guifg=DarkBlue
hi Folded     	ctermbg=Grey	   		ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi IncSearch  	cterm=reverse	   		gui=reverse
hi LineNr     	ctermfg=13	   			guifg=Brown
hi MatchParen	ctermfg=fg				ctermbg=7
hi ModeMsg    	cterm=bold	   			gui=bold
hi MoreMsg    	ctermfg=DarkGreen    	gui=bold guifg=SeaGreen
hi NonText    	ctermfg=Blue	   		gui=bold guifg=gray guibg=white
hi Pmenu      	guibg=LightBlue
hi PmenuSel   	ctermfg=White	   		ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
hi Question   	ctermfg=DarkGreen    	gui=bold guifg=SeaGreen
hi SpecialKey	ctermfg=DarkBlue	   	guifg=Blue
hi StatusLine	cterm=bold				ctermbg=7 ctermfg=fg
hi StatusLineNC	cterm=bold	   			ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi Title     	ctermfg=DarkMagenta  	gui=bold guifg=Magenta
hi Todo			ctermfg=15				ctermbg=0
hi VertSplit  	cterm=reverse	   		gui=reverse
hi Visual     	cterm=NONE	ctermfg=bg	ctermbg=fg	 gui=reverse guifg=Grey guibg=fg
hi VisualNOS  	cterm=underline,bold 	gui=underline,bold
hi WarningMsg 	ctermfg=11	   		guifg=Red
hi WildMenu   	ctermfg=0	   		ctermbg=7    guibg=Yellow guifg=Black

hi TabLineFill	ctermfg=bg	ctermbg=bg
hi TabLineSel	cterm=bold	ctermfg=fg	ctermbg=bg
hi TabLine		ctermfg=15	ctermbg=bg

" syntax highlighting
source /home/callum/.vim/colors/custom-syntax.vim
" vim: sw=2
