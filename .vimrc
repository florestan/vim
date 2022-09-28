""pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"" to dectect tikz file as tex file
au BufNewFile,BufRead *.tikz set filetype=tex

"" remap K to insert line
nnoremap <expr>K getline('.')[col('.')-1]==' ' ? "r<CR>" : "i<CR><Esc>"

"" fold with indent
let foldmethod=indent

" vimtex
let g:vimtex_imaps_leader='&'
let g:vimtex_toc_show_numbers=0
" let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_open_on_warning=0
" disable warning in quickfix
*g:vimtex_quickfix_open_on_warning*

" to use Skim
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
" remoteOpen for better backward Latex search with skim
source ~/.vim/autoload/remoteOpen.vim

let g:vimtex_quickfix_warnings = {
  \ 'overfull' : 0,
  \ 'underfull' : 0,
  \ 'packages' : {
  \   'default' : 0,
  \   'biblatex' : 0,
  \ },
  \}

" expand (ileader)e to \varepsilon instead of \epsilon (vimtex)
call vimtex#imaps#add_map({
\ 'lhs' : 'e',
\ 'rhs' : '\varepsilon',
\ 'wrapper' : 'vimtex#imaps#wrap_trivial'
\})

" expand (ileader)f to \varphi instead of \phi (vimtex)
call vimtex#imaps#add_map({
\ 'lhs' : 'f',
\ 'rhs' : '\varphi',
\ 'wrapper' : 'vimtex#imaps#wrap_trivial'
\})

" wildmenu for good autocompletion in :e :w etc.
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.a,*.o,*.bbl,*.pdf,*.dvi,*.aux,*.blg,*.fls,*.log,*.gz,*.toc,*.out,*.fdb_latexmk

""colorscheme
syntax enable
set background=dark
" colorscheme solarized
" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"guioptions
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=Monospace\ 11

"general
set number " show line number
set cursorline " highlight current line

" lang for python
let $LANG='en_US.UTF-8'

 filetype plugin on

" python
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix
