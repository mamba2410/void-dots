" Vim color file
" Maintainer:	Callum McGregor
" Last Change:	2020 06 17

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
hi Comment    		cterm=NONE	ctermfg=7
hi Constant  		cterm=NONE	ctermfg=4
hi Function			cterm=NONE	ctermfg=10
hi GlobalConstant	cterm=bold	ctermfg=14
hi GlobalVariable	cterm=NONE	ctermfg=3
hi Identifier		cterm=NONE	ctermfg=14
hi LocalVariable	cterm=NONE	ctermfg=fg
hi Member			cterm=NONE	ctermfg=11
hi Operator	 		cterm=NONE	ctermfg=5
hi PreProc   		cterm=NONE	ctermfg=15	
hi Special   		cterm=NONE	ctermfg=12	
hi Statement 		cterm=bold	ctermfg=5
hi Type	     		cterm=NONE	ctermfg=1	

" TagHighlight groups
hi link Class 			Type
hi link DefinedName		Constant
hi link Enumerator		Type
hi link EnumerationName Constant
hi link Struture 		Type
hi link Typedef 		Type
hi link Union			Type


" Now to set Minor highlight groups
hi DiffAdd    	cterm=NONE	ctermfg=4
hi DiffChange 	cterm=NONE	ctermfg=9
hi DiffDelete 	cterm=NONE	ctermfg=1
hi DiffText   	cterm=NONE	ctermfg=fg
hi Directory  	cterm=NONE	ctermfg=4
hi Error		cterm=NONE	ctermfg=fg	ctermbg=7
hi ErrorMsg   	cterm=NONE	ctermfg=fg 	ctermbg=7
hi FoldColumn 	cterm=NONE	ctermfg=4
hi Folded     	cterm=NONE	ctermfg=4	ctermfg=7
hi IncSearch  	cterm=NONE	ctermfg=bg	ctermbg=fg
hi Label		cterm=BOLD	ctermfg=2
hi LineNr     	cterm=NONE	ctermfg=13	   			
hi MatchParen	cterm=NONE	ctermfg=fg	ctermbg=7
hi ModeMsg    	cterm=bold
hi MoreMsg    	cterm=NONE	ctermfg=2
hi NonText    	cterm=NONE	ctermfg=1	ctermbg=bg
hi Pmenu      	cterm=NONE	ctermfg=fg	ctermbg=7
hi PmenuSel   	cterm=NONE	ctermfg=bg	ctermbg=15
hi Question   	cterm=NONE	ctermfg=2
hi Search		cterm=NONE	ctermfg=bg	ctermbg=fg
hi SpecialKey	cterm=NONE	ctermfg=4
hi StatusLine	cterm=bold	ctermfg=fg	ctermbg=7
hi StatusLineNC	cterm=bold	ctermfg=15	ctermbg=7
hi StatusLineTerm	cterm=NONE	ctermfg=fg	ctermbg=7
hi TabLineFill	cterm=NONE	ctermfg=fg	ctermbg=7
hi TabLineSel	cterm=bold	ctermfg=fg	ctermbg=7
hi TabLine		cterm=NONE	ctermfg=15	ctermbg=7
hi Title     	cterm=NONE	ctermfg=1	ctermbg=7
hi Todo			cterm=NONE	ctermfg=15	ctermbg=bg
hi VertSplit  	cterm=NONE	ctermfg=fg
hi Visual     	cterm=NONE	ctermfg=bg	ctermbg=fg	
hi VisualNOS  	cterm=NONE	ctermfg=1	ctermbg=7
hi WarningMsg 	cterm=NONE	ctermfg=11	ctermbg=bg
hi WildMenu   	cterm=NONE	ctermfg=bg	ctermbg=7   

" syntax highlighting
source $XDG_CONFIG_HOME/vim/colors/custom-syntax.vim

" vim: sw=2
