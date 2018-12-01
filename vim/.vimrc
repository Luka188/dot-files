set tabstop=2
set shiftwidth=2
set expandtab
set cc=80
set number
set autoindent
set clipboard=unnamedplus


" default to using 'g' flag in %s/search/replace/
set gdefault
let g:cpp_class_scope_highlight = 1
"let g:cpp_member_variable_highlight = 0
let g:cpp_class_decl_highlight = 1
syntax enable
colorscheme gruvbox
highlight def link cCustomClassName GruvboxOrange
highlight def link cCustomFunc GruvboxBlue
highlight def link cppSTLfunction GruvboxBlue
highlight def link cCustomClass GruvboxOrange
highlight def link cppSTLios gruvboxAqua
highlight ExtraWhitespace ctermbg=darkgrey guibg=red
  match ExtraWhitespace /\s\+$/

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
  endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"
map <C-K> :py3f /usr/local/bin/clang-format.py<cr>
imap <C-K> <c-o> :py3f /usr/local/bin/clang-format.py<cr>

function! InsertHeader()
  let filename=toupper(expand("%:t:r")) . "_H"
  call append(0, "#ifndef " . filename)
  call append(1, "# define " . filename)
  call append(3, "#endif /* !" . filename . " */")
endfunction
function! InsertHeaderpp()
  call append(0, "#pragma once")
endfunction
function! InsertHxx()
  let filename=expand("%:t:r") . ".hh\""
  call append(0, "#include \"" . filename)
endfunction

function! InsertInclude()
  call append(0, "#include \"" . expand("%:t:r") . ".h\"")
endfunction

function! InsertIncludepp()
  call append(0, "#include \"" . expand("%:t:r") . ".hh\"")
endfunction

" Automatically adding header and include
autocmd BufNewFile *.h call InsertHeader()
autocmd BufNewFile *.c call InsertInclude()
autocmd BufNewFile *.hh call InsertHeaderpp()
autocmd BufNewFile *.cc call InsertIncludepp()
autocmd BufNewFile *.hxx call InsertHxx()
