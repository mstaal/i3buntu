" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

"   This makes <F12> a shortcut that compiles the file set as masterfile.  By
"   default this is the first opened file.  A new file can be set by <F8>
"   while editing that file.
"  let LaTeXmaster = '"'.expand('%').'"'
"  let BibTeXmaster = '"'.expand('%:r').'"'
"  nmap <F8> :let LaTeXmaster = '"'.expand('%').'"' \| let BibTeXmaster = '"'.expand('%:r').'"'<CR>
"  imap <F8> <ESC><F8>
"  vmap <F8> <ESC><F8>gv
"  nmap <F12> :execute 'w \|! pdflatex '.expand(LaTeXmaster)<CR>
"  imap <F12> <ESC><F12>
"  nmap <F12> :execute 'w \|! pdflatex '.expand(LaTeXmaster)<CR>
"  imap <F12> <ESC><F12>
"  vmap <F12> <ESC><F12>gv
"  nmap <F9> :execute 'w \|! bibtex '.expand(BibTeXmaster)<CR>
"  imap <F9> <ESC><F12>
"  vmap <F9> <ESC><F12>gv

command -nargs=0 LaTeX :exe "normal :w<ENTER> \\ll"



" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

syn on

set number

set ruler

setlocal textwidth=70

" Search highlighting
" set hls is
nmap <silent> <C-n> :noh<CR>

" Tab indentation
set sw=4 sts=4 et

set titlestring=%t
set title


" Omni complete popup menu color
highlight Pmenu guibg=brown gui=bold
highlight Pmenu ctermbg=238 gui=bold

" Search highlight color
" hi Search guibg=peru guifg=wheat
hi Search cterm=NONE ctermfg=blue ctermbg=green
" hi Search cterm=NONE ctermfg=grey ctermbg=blue

" tab navigation like firefox

nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
nnoremap <buffer> <F7> :exec '!python' shellescape(@%, 1)<cr>
inoremap <C-Right> <Esc>:tabnext<CR>i
inoremap <C-Left> <Esc>:tabprevious<CR>i
inoremap <C-t> <Esc>:tabnew<CR>i
inoremap <C-w> <Esc>:tabclose<CR>i


if has("mouse")
    set mouse=a
endif

set ignorecase
set smartcase

set nofoldenable

set scrolloff=1000

" Change default target to pdf, if not dvi is used
let g:Tex_DefaultTargetFormat = 'pdf'
 
" Setup the compile rule for pdf to use pdflatex with synctex enabled
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*' 
 
" PDF display rule
let g:Tex_ViewRule_pdf = 'open -a Skim'
 
map ,ll <leader>ll
 
" ,ls to forward search
map ,ls :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR><CR>
 
" ,lv to display pdf 
map ,lv <leader>lv

