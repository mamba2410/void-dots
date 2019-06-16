" custom highlighting groups for colorscheme

autocmd FileType c,cpp,h call <SID>def_base_syntax()

function! s:def_base_syntax()
	syntax match newOperators "+\|-\|\*\|;\|?\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]"
	hi link newOperators Operator
endfunction
