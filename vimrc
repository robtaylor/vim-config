
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

if &term == "xterm-256color"
  set t_kb=^?
endif

" disable mouse pointer moving in Insert mode, do focus follows mouse
"set mouse=nv mousefocus

filetype plugin indent on

if has("syntax")
  syntax on

  " highlight special keys
  highlight SpecialKey ctermfg=red guifg=red
endif

" mark tabs and non-breaking spaces
set list listchars=tab:»·,nbsp:━

" format options
" :help fo-table
set formatoptions=crotqc

" settings for Jedi
let g:jedi#completions_command = "<C-n>"
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0

" file type defaults
au FileType tex,docbk,html set tw=78
au FileType tex,docbk,html,htmldjango set ts=2 sts=2 sw=2 et
au FileType meson set ts=2 sts=2 sw=2
au FileType rst set ts=4 sts=4 sw=4 et

" highlight trailing whitespace
highlight BadWhitespace ctermbg=red guibg=red
autocmd FileType * match BadWhitespace /\s\+$/


call plug#begin()
" List your plugins here
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
call plug#end()



