" Old vi has no eval, var val run on default will bail.
if has("eval")
  let skip_defaults_vim = 1
endif

" Sets Ctrl-c to yank visual selection into system clipboard
map <C-c> "cy :call system('xclip -sel clip', @c)<CR>
map Y y$ 
map <c-l> :noh<CR>

set nocompatible

" ## Compatibility tools utilized (not available in vi):
set autoindent
set autowrite " auto-write when changing multiple files opened
set number
set norelativenumber
set ruler " display col and row south east bottom of window
set showmode " show command and insert modes

set tabstop=2 " default tab is too wide
set softtabstop=2 " number of columns for a tab
set shiftwidth=2 " when using << or >>
set smartindent " automatically output extra indent in some cases
set smarttab " blankspace deletes a shiftwidth worth of space
set expandtab " replace tabs with spaces automatically

if v:version >= 800
  set nofixendofline " stop vim adding line on end of file
  set foldmethod=manual
  set nofoldenable
endif

" Mark trailing spaces as errors, they can lead to catastrophy in prod
if has("match")
  match ErrorMsg '\s\+$'
endif

" Little more risk, much more reward in cleanliness
set nobackup
set noswapfile
set nowritebackup

set hlsearch " highlight search
set incsearch " incrementally highlight when search
set linebreak " wraps long lines in breakat rather than last char

set ttyfast " more characters sent to screen for redrawing

filetype plugin on " sense the filetype

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
