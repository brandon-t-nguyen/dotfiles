set mouse=a
syntax on
"set nowrap

"Enable line numbers
set number

"Enable indentation keeping
set autoindent

"enable X11 clipboard
set clipboard=unnamedplus

"show status line w/ file number
set ls=2

"show commands being entered
set showcmd

"show marker at column 81
"autocmd FileType c,cpp,h set colorcolumn=81,121
set colorcolumn=81,121

autocmd FileType gitcommit set colorcolumn=51,73

"four space tabs 
set tabstop=4
set shiftwidth=4
"set softtabstop=4

"tabs use space characters
set expandtab
"but makefiles need tab
autocmd FileType mk,make set noexpandtab

"flag trailing whitespace for all files
match Error /\s\+$/

"...and clean it automagically on write (for some filetypes)
autocmd FileType c,cpp,h,java,verilog,systemverilog autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

"set alt tab width for certain filetypes
autocmd FileType markdown,yaml,tex set tabstop=2 | set shiftwidth=2

"Local configuration
source $HOME/.local.vimrc
