set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Maus Ditching"
set splitbelow
set splitright
"split navigation 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Das heißt 
"    Ctrl+J                       runter
"    Ctrl+K                       rauf   
"    Ctrl+L                       rechts
"    Ctrl+H bewege die Spalte nach links
" Falten
set foldmethod=indent
set foldlevel=99

" Falten mit der Leertaste
noremap <space> za

"PluginSektion1 
Plugin 'tmhedberg/SimpylFold'

let g:SimpylFold_docstring_preview=1

"Python Identifaktion 
"au BufNewFile,BufRead *.py
   " \ set tabstop=4
   " \ set softtabstop=4
   " \ set shiftwidth=4
   " \ set textwidth=79
    "\ set expandtab
   " \ set autoindent
   "" \ set fileformat=unix
"
"
"An sich würde das auch gehen 
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"Zum Automatisiern gibt es auch noch 
Plugin 'vim-scripts/indentpython.vim'

"Unnötige Sachen Streichen 
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"UTF-8 UwU
set encoding=utf-8


"Jetzt kommts 
"Bundle 'Valloric/YouCompleteMe'

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Virtuelleum. Unter.
"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
 " project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

"Synatx ? 

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

"Bin auch ein Mann der Farben liebt 
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
call togglebg#map("<F5>")

"File aucher
Plugin 'scrooloose/nerdtree'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignoriert Dateien in NERDTree 

"Gott Suche 
Plugin 'kien/ctrlp.vim'

"Linien Numerierung 
 set nu 

 "git git git git 
Plugin 'tpope/vim-fugitive'

"Powerlines gerade gefunden 
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"bisschen mehr config 

set clipboard=unnamed 
"syntax enable
set ts=4
set showmatch 
set autoindent

"Und fertig viel Spaß <3


"""HMMM sehr interressant mal schauen 
" A fuzzy file finder
"Plugin 'kien/ctrlp.vim'
" Comment/Uncomment tool
Plugin 'scrooloose/nerdcommenter'
" Switch to the begining and the end of a block by pressing %
Plugin 'tmhedberg/matchit'
" A Tree-like side bar for better navigation
"Plugin 'scrooloose/nerdtree'
" A cool status bar
Plugin 'vim-airline/vim-airline'
" Airline themes
Plugin 'vim-airline/vim-airline-themes'
" Nord
Plugin 'arcticicestudio/nord-vim'
" Better syntax-highlighting for filetypes in vim
Plugin 'sheerun/vim-polyglot'
" Intellisense engine
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration
"Plugin 'tpope/vim-fugitive'
" Auto-close braces and scopes
Plugin 'jiangmiao/auto-pairs'

"––––––––––––––––––––––––––––––––––––
"gute Plugings im Netz gefunden 
"https://github.com/rockerBOO/awesome-neovim
Plugin 'nvim-treesitter/nvim-treesitter'
""Plugin '0styx0/abbreinder.vim'
Plugin 'rohit-px2/nvui'
Plugin 'ellisonleao/glow.nvim'



"Konfiguriert vin CS 
"Website c3866s.github.io 
"Diese Datei witrd auf Github jetzt Hochgeladen lol XD 





















