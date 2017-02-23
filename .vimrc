set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set encoding=utf-8
set number
set exrc
set secure
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

:command NT NERDTree

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType yml setlocal shiftwidth=2 tabstop=2
autocmd FileType fish setlocal noexpandtab
autocmd FileType make setlocal noexpandtab

function TrimWhiteSpace()
	%s/\s*$//
	''
:endfunction

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>
set list lcs=tab:»·,trail:·

function ToggleWidth()
	if &shiftwidth == 4
		set tabstop=2
		set shiftwidth=2
		echom "Set indents to 2"
	else
		set tabstop=4
		set shiftwidth=2
		echom "Set indents to 4"
	endif
endfunction

map <F3> :call ToggleWidth()<CR>

execute pathogen#infect()
syntax on
filetype plugin indent on
