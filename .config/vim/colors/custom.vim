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
hi Comment    	cterm=NONE	ctermfg=7
hi Constant  	cterm=NONE	ctermfg=4
hi Identifier	cterm=NONE	ctermfg=14
hi Operator	 	cterm=NONE	ctermfg=5
hi PreProc   	cterm=NONE	ctermfg=15	
hi Special   	cterm=NONE	ctermfg=12	
hi Statement 	cterm=bold	ctermfg=5
hi Type	     	cterm=NONE	ctermfg=1	

" TagHighlight groups
hi link Class 		Type
hi link DefinedName	Constant
hi link Enumerator	Type
hi link EnumerationName Constant
hi Function			cterm=none	ctermfg=11
hi GlobalConstant	cterm=bold	ctermfg=14
hi GlobalVariable	cterm=none	ctermfg=3
hi LocalVariable	cterm=none	ctermfg=fg
hi Member			cterm=none	ctermfg=11
hi link Struture 	Type
hi link Typedef 	Type
hi link Union		Type


" Now to set Minor highlight groups
hi DiffAdd    	cterm=none		ctermfg=fg	ctermbg=14    	
hi DiffChange 	cterm=none		ctermfg=fg	ctermbg=13 	
hi DiffDelete 	cterm=none		ctermfg=12	ctermbg=7
hi DiffText   	cterm=bold		ctermfg=fg	ctermbg=9
hi Directory  	cterm=none		ctermfg=4
hi Error		cterm=none		ctermfg=fg	ctermbg=7
hi ErrorMsg   	cterm=none		ctermfg=fg 	ctermbg=7
hi FoldColumn 	cterm=none		ctermfg=4
hi Folded     	cterm=none		ctermfg=4	ctermfg=7
hi IncSearch  	cterm=reverse
hi Label		cterm=bold		ctermfg=2
hi LineNr     	cterm=none		ctermfg=13	   			
hi MatchParen	cterm=none		ctermfg=fg	ctermbg=7
hi ModeMsg    	cterm=bold
hi MoreMsg    	cterm=none		ctermfg=2
hi NonText    	cterm=none		ctermfg=12
hi Pmenu      	cterm=none		ctermfg=fg	ctermbg=7
hi PmenuSel   	cterm=none		ctermfg=bg	ctermbg=15
hi Question   	cterm=none		ctermfg=2
hi SpecialKey	cterm=none		ctermfg=4
hi StatusLine	cterm=bold		ctermfg=fg	ctermbg=7
hi StatusLineNC	cterm=bold		ctermfg=15	ctermbg=7
hi StatusLineTerm	cterm=none	ctermfg=fg	ctermbg=7
hi TabLineFill	cterm=none		ctermfg=fg	ctermbg=7
hi TabLineSel	cterm=bold		ctermfg=fg	ctermbg=7
hi TabLine		cterm=none		ctermfg=15	ctermbg=7
hi Title     	cterm=none		ctermfg=2
hi Todo			cterm=none		ctermfg=15	ctermbg=bg
hi VertSplit  	cterm=none		ctermfg=fg
hi Visual     	cterm=none		ctermfg=bg	ctermbg=fg	
hi VisualNOS  	cterm=underline,bold 	
hi WarningMsg 	cterm=none		ctermfg=11	   		
hi WildMenu   	cterm=none		ctermfg=0	ctermbg=7   

" syntax highlighting
source $XDG_CONFIG_HOME/vim/colors/custom-syntax.vim

" vim: sw=2
