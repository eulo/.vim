:colorscheme Tomorrow-Night

set number
set numberwidth=4
set mouse=a
set nocompatible
set t_Co=256
set laststatus=2
" turn on smart indenting
set smartindent
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set nowrap

set cursorline          " highlight current line


" tabs = 2 spaces
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2
set expandtab
" fix backspace key
set backspace=indent,eol,start

:nmap j gj
:nmap k gk
:au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim 
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.hbs set syntax=html
au BufNewFile,BufRead *.es6 set syntax=javascript
"au FileType sass,scss,less,stylus syn cluster sassCssAttributes add=@cssColors

let g:pathogen_disabled = []
call pathogen#infect()

filetype off
syntax on
filetype plugin indent on " load filetype-specific indent files

" css Color
let g:cssColorVimDoNotMessMyUpdatetime = 1

" YouCompleteMe JS Syntax
let g:used_javascript_libs = 'underscore,React,Flux'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Powerline stuff
source /Library/Python/2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
" End Powerline stuff

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Syntastic stuff (turned off for performance)
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" End Syntastic stuff

" Use pure vim statusline instead
set showfulltag
set showcmd " show command in bottom bar
set wildmode=list:longest " visual autocomplete for command menu
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
behave mswin " visual autocomplete for command menu
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

" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
