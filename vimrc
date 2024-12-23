set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
" Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-commentary'
Plugin 'honza/vim-snippets'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-endwise'
Plugin 'raimondi/delimitmate'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'othree/html5.vim'
" Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-haml'
" Plugin 'slim-template/vim-slim'
" Plugin 'cakebaker/scss-syntax.vim'
Plugin 'scrooloose/syntastic'
" Plugin 'posva/vim-vue'
Plugin 'Yggdroot/indentLine'
" Plugin 'fatih/vim-go'
Plugin 'matchit.zip'
" Plugin 'majutsushi/tagbar'
" Plugin 'iamcco/markdown-preview.nvim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'catppuccin/vim'
Plugin 'myusuf3/numbers.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
set background=dark
" let g:solarized_visibility='low'
" let g:solarized_visibility = 'high'
" let g:solarized_contrast = 'high'
" colorscheme solarized8_flat
colorscheme catppuccin_mocha
" colorscheme catppuccin_macchiato
" let g:lightline = {'colorscheme': 'catppuccin_mocha'}
" colorscheme solarized

hi DiffAdd      gui=none    guifg=#A6E3A1       guibg=NONE
" hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
hi DiffDelete   gui=bold    guifg=#F38BA8       guibg=NONE
" hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left NerdTree scroll bar
" set guifont=Monaco\ for\ Powerline:h18
" set guifont=Monaco\ for\ Powerline:h20
" set guifont=BitstromWera\ Nerd\ Font\ Mono:h20
set guifont=JetBrainsMonoNL\ Nerd\ Font\ Mono:h20
" set guifont=DejaVuSansM\ Nerd\ Font\ Mono:h20
" set guifont=FiraMono\ Nerd\ Font\ Mono:h22
" set guifont=Monaco\ for\ Powerline:h22
" set guifont=Monaco:h20

set number

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
" set foldmethod=manual   "fold based on manual
" set foldmethod=syntax   "fold based on syntax
set foldnestmax=6       "deepest fold is 3 levels
set nofoldenable
set foldlevel=6

"display tabs and trailing spaces
set list
set listchars=trail:⋅,nbsp:⋅,tab:▸\ ,

set formatoptions-=o "dont continue comments when pushing o/O

"hide buffers when not displayed
set hidden

map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map . /

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z

" Bubble single lines
nmap <S-Up> ddkP
nmap <S-Down> ddp

" Bubble multipleline lines
vmap <S-Up> xkP`[V`]
vmap <S-Down> xp`[V`]

" Quick jumping between splits
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

set wildignore+=*.o,*.obj,.git,public/system/**,tmp,*/.git/*,node_modules/*

set backupdir=~/.vim/tmp,/tmp
set directory=~/.vim/tmp,/tmp

" Keep text selected after shifting it left or right.
vmap < <gv
vmap > >gv

map <D-9> :nohlsearch<CR>
map <F14> :nohlsearch<CR>
set hlsearch

set nowrap

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" How can I open a NERDTree automatically when vim starts up if no files were specified?
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" How can I map a specific key or shortcut to open NERDTree?
map <D-3> :NERDTreeToggle<CR>
map <D-2> :NERDTreeFind<CR>
map <D-5> :AckFromSearch<CR>

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('rb', 'Magenta', 'none', '#d33682', '#002b36')

" don't collapse dirs that have only one child
let NERDTreeCascadeSingleChildDir=0

set laststatus=2
" automatically populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#term#enabled = 1
" let g:airline#extensions#cursormode#enabled = 1
let g:airline_theme = 'catppuccin_mocha'
" let g:airline_theme = 'catppuccin_macchiato'

set cursorline
set colorcolumn=140

map <D-4> :CtrlPBuffer<CR>

set autoread

" let g:indentLine_color_gui = '#657b83'
let g:indentLine_enabled = 1
let g:indentLine_char = '⎸'

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = 'node_modules\|.DS_Store\|.git'
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }
let g:ctrlp_max_depth = 100
let g:ctrlp_max_files = 100000

" let g:NERDTreeWinPos = "right"
" let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_check_on_wq = 0
let g:syntastic_ignore_files = ['schema.rb']

" call gitgutter#highlight#define_highlights()

" if has('gui_running')
"   autocmd VimEnter * NERDTree
"   autocmd VimEnter * wincmd p
" endif

let g:snipMate = { 'snippet_version' : 1 }

let g:rails_projections = {
      \ "app/controllers/*_controller.rb": {
      \   "test": [
      \     "spec/controllers/{}_controller_spec.rb",
      \     "spec/requests/{}_spec.rb"
      \   ],
      \ },
      \ "spec/requests/*_spec.rb": {
      \   "alternate": [
      \     "app/controllers/{}_controller.rb",
      \   ],
      \ }}

let g:NERDTreeWinSize=40

" function! AckClipboard()
"     execute printf('Ack! -Q -- "%s"', substitute(@", '\([%"\\]\)', '\\\1', 'g'))
" endfunction
" vnoremap <A-f> y:call AckClipboard()<CR>

" Use The Silver Searcher if available
" https://github.com/ggreer/the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

" let colorscheme=catppuccin_mocha
set termguicolors
