:colorscheme Tomorrow-Night

set number
set numberwidth=4
set mouse=a
set nocompatible
set t_Co=256
set laststatus=2
" turn on smart indenting
set smartindent
set hlsearch
set nowrap

" tabs = 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
" fix backspace key
set backspace=indent,eol,start

:nmap j gj
:nmap k gk
:au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim 
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.hbs set syntax=html
"au FileType sass,scss,less,stylus syn cluster sassCssAttributes add=@cssColors
call pathogen#infect()
filetype off
syntax on
filetype plugin indent on

" css Color
let g:cssColorVimDoNotMessMyUpdatetime = 1

" YouCompleteMe JS Syntax
let g:used_javascript_libs = 'underscore,backbone'

" Powerline stuff
let g:Powerline_symbols = 'fancy'
" End Powerline stuff

" Syntastic stuff (turned off for performance)
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_jump=1
"let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
"let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
" End Syntastic stuff

" Use pure vim statusline instead
set showfulltag
set showcmd
set wildmode=list:longest
set laststatus=2
set statusline=%f%=\ %Y\ %c%V,%l/%L\ %P\ [%M%n%W]:%{tabpagenr()}/%{tabpagenr('$')}

" turn off some unwanted stuff
set report=0
set shortmess+=asWAI
"set showtabline=0
set noshowmode

" Bind paste toggle to F10
set pastetoggle=<F10>

" Better select
behave mswin
" don't reset selection with not-shifted special keys
set keymodel-=stopsel
set selection=inclusive

" Turn off backup files
set nobackup
" Turn off swap files
set updatecount=0
set secure

" Rebind window split movements
nnoremap <silent> <Right> <c-w>l
nnoremap <silent> <Left> <c-w>h
nnoremap <silent> <Up> <c-w>k
nnoremap <silent> <Down> <c-w>j

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
