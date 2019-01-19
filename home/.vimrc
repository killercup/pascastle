set nocompatible                   " This is vim not vi
" set mouse=a                        " Allow use of mouse
set exrc                           " Allow directory specific shit
" set number                         " Show line numbers
set ruler                          " Show current line and column
set nrformats=                     " Treat all numbers as decimal
set history=200                    " Keep moar history
set modeline

" Color scheme settings
syntax enable
" color solarized
set background=dark

" Make the status line useful
if has("statusline") && !&cp
  let g:Powerline_symbols = 'fancy'
  set laststatus=2                 " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r        " File path, modified, read only
  set statusline+=Line:%l/%L\ [%p%%] " Line number
  set statusline+=\ Col:%v           " Column number
  set statusline+=\ Buf:#%n          " Buffer number
  set statusline+=\ Char:[%b][0x%B]       " ASCII and Hex values for char at cursor
endif

" Whitespace settings
set nowrap                         " don't wrap lines
set tabstop=2                      " a tab is two spaces
set shiftwidth=2                   " an autoindent (with <<) is two spaces
set softtabstop=2                  " if we have smart tabs, treat like hard tabs
set noexpandtab                    " Use hard tabs
set list                           " Show invisible characters
set backspace=indent,eol,start     " backspace through everything in insert mode

" List chars
set listchars=""                   " Reset the listchars
set listchars=tab:\ \              " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.             " show trailing spaces as dots
set listchars+=extends:>           " The character to show in the last column when wrap is off and the line continues beyond the right of the screen
set listchars+=precedes:<          " The character to show in the last column when wrap is off and the line continues beyond the right of the screen

" Fold settings
set foldmethod=marker
set foldenable

set shell=bash " zsh is slow for some reason, and dropping the /bin makes it run .bashrc for who knows why

filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

