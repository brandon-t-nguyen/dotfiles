" This is similar to my Vim configuration, except some of the things:
" I set in Vim are now Neovim defaults :)
" This is a base Neovim config meant to be version controlled and symlinked;
" at the end it will source a local file free from either of these to deal
" with any peculiarities of a specific system

" === Misc ===
" Enable line numbers
set number

" === Color Columns ===
" Show column at 81 and 121 to align for general 80 and 120 character line limits
set colorcolumn=81,121
" Use suggested message sizes for Git commit messages of 50 for titles and 72
" for messages
autocmd FileType gitcommit set colorcolumn=51,73

" === Tabs ===
" 4-space tabs
set tabstop=4
set shiftwidth=4

" Insert spaces for tab
set expandtab
" ...except for Makefiles which need tab characters
autocmd FileType mk,make set noexpandtab

" Alternate tab widths
autocmd FileType markdown,yaml,tex set tabstop=2 | set shiftwidth=2

" === Trailing whitespace detection ===
" Flag trailing whitespace for all files
match Error /\s\+$/
" For *certain* filetypes, automatically get rid of trailing whitespace
autocmd FileType c,cpp,h,java,verilog,systemverilog autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"), 'substitute(v:val,"\\s\\+$","","")'))

" Local configuration
if filereadable(expand("~/.config/nvim/init.local.vim"))
    source ~/.config/nvim/init.local.vim
endif
