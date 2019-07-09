" Vim color file
" Maintainer:	Callum McGregor
" Last Change:	2019 06 08

hi clear


" Normal should come first
hi Normal	cterm=NONE		ctermfg=8	ctermbg=0		

" Tell Vim if the background is light or dark
set background=dark

" Set the scheme name
" TODO: Come up with something more creative
let g:colors_name = "custom"

" Set the cursor colours
" Unsure why this doesn't work as expected
hi Cursor		cterm=NONE	ctermfg=bg	ctermbg=fg   		
hi lCursor		cterm=NONE	ctermfg=bg	ctermbg=fg   		

" Setting major highlight groups
" Since t_Co=16 is set, can use all 16 Xresources colours
" Note: color0 should be reserved for background, and color8 is reserved for
" foreground in Xresources
hi Comment    	cterm=NONE ctermfg=7	 
hi Constant  	cterm=NONE ctermfg=4	 
hi Identifier	cterm=NONE ctermfg=9	 
hi Operator	 	cterm=NONE ctermfg=3
hi PreProc   	cterm=NONE ctermfg=15	 
hi Special   	cterm=NONE ctermfg=14	 
hi Statement 	cterm=bold ctermfg=5	 
hi Type	     	cterm=NONE ctermfg=1	 

" Now to set Minor highlight groups
hi DiffAdd    	ctermbg=LightBlue    	
hi DiffChange 	ctermbg=LightMagenta 	
hi DiffDelete 	ctermfg=Blue			ctermbg=7   
hi DiffText   	ctermbg=Red	   			cterm=bold  
hi Directory  	ctermfg=DarkBlue	   	
hi Error		ctermfg=fg				ctermbg=7
hi ErrorMsg   	ctermfg=fg	   			ctermbg=7
hi FoldColumn 	ctermfg=DarkBlue	   	ctermbg=Grey     	    
hi Folded     	ctermbg=Grey	   		ctermfg=DarkBlue  
hi IncSearch  	cterm=reverse	   		
hi LineNr     	ctermfg=13	   			
hi MatchParen	ctermfg=fg				ctermbg=7
hi ModeMsg    	cterm=bold	   			
hi MoreMsg    	ctermfg=DarkGreen    	 
hi NonText    	ctermfg=Blue	   		  
hi PmenuSel   	ctermfg=White	   		ctermbg=DarkBlue    
hi Question   	ctermfg=DarkGreen    	 
hi SpecialKey	ctermfg=DarkBlue	   	
hi StatusLine	cterm=bold				ctermbg=7			ctermfg=fg
hi StatusLineNC	cterm=bold	   			ctermbg=blue		ctermfg=black   
hi Title     	ctermfg=DarkMagenta  	 
hi Todo			ctermfg=15				ctermbg=0
hi VertSplit  	cterm=reverse	   		
hi Visual     	cterm=NONE				ctermfg=bg			ctermbg=fg	   
hi VisualNOS  	cterm=underline,bold
hi WarningMsg 	ctermfg=11	   		
hi WildMenu   	ctermfg=0	   			ctermbg=7     

hi TabLineFill	ctermfg=bg	ctermbg=bg
hi TabLineSel	cterm=bold	ctermfg=fg	ctermbg=bg
hi TabLine		ctermfg=15	ctermbg=bg

" syntax highlighting
source /home/callum/.vim/colors/custom-syntax.vim
" vim: sw=2
