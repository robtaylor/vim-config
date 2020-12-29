runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

"if has("gui_gtk2")
"    set guifont=Source\ Code\ Pro\ Medium\ 10
"else
"    set guifont=Source\ Code\ Pro\ Light:h11
"endif

set nobackup
set viminfo='20,\"50
set history=50
set ruler
set showmatch
set title
set showcmd
set modeline
set modelines=3

set pastetoggle=<F10>

" disable mouse pointer moving in Insert mode, do focus follows mouse
"set mouse=nv mousefocus

filetype plugin indent on

if has("syntax")
  syntax on

  " highlight trailing whitespace
  highlight BadWhitespace ctermbg=red guibg=red
  autocmd FileType * syntax match BadWhitespace /\s\+$/

  " highlight special keys
  highlight SpecialKey ctermfg=red guifg=red
endif

" mark tabs and non-breaking spaces
set list listchars=tab:»·,nbsp:━

" format options
" :help fo-table
set formatoptions=crotqc

" settings for Jedi
let g:jedi#autocompletion_command = "<C-n>"
let g:jedi#popup_on_dot = 0
let g:jedi#show_function_definition = 0

" file type defaults
au FileType tex,docbk,html set tw=78
au FileType tex,docbk,html,htmldjango ts=2 sts=2 sw=2

" tag bar
"if has("gui_running")
"    au FileType python TagbarOpen
"    au FileType python set columns=121
"endif

