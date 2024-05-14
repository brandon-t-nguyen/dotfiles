" This is similar to my Vim configuration, except some of the things:
" I set in Vim are now Neovim defaults :)
" This is a base Neovim config meant to be version controlled and symlinked;
" at the end it will source a local file free from either of these to deal
" with any peculiarities of a specific system

" === Misc ===
" Enable line numbers
set number

" === Color Columns ===
" Set column color
highlight ColorColumn ctermbg=darkgray guibg=darkgray
" Show column at 81 and 121 to align for general 80 and 120 character line limits
set colorcolumn=81,121
" Use suggested message sizes for Git commit messages of 50 for titles and 72
" for messages
autocmd FileType gitcommit set colorcolumn=51,73

" === Tabs ===
function SetTabWidth(width)
    let &tabstop = a:width
    let &shiftwidth = a:width
endfunction

" 4-space tabs as default
call SetTabWidth(4)

" Insert spaces for tab
set expandtab
" ...except for Makefiles which need tab characters
autocmd FileType mk,make set noexpandtab

" Alternate tab widths
autocmd FileType markdown,yaml,tex call SetTabWidth(2)

" === Trailing whitespace ===
" Flag trailing whitespace for all files
highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+$/

" Function to delete trailing whitespace
function StripTrailingWhitespace()
    %s/\s\+$//e
endfunction

" For *certain* filetypes, automatically get rid of trailing whitespace
autocmd FileType c,cpp,h,java,verilog,systemverilog autocmd BufWritePre * call StripTrailingWhitespace()

" === Local ===
" Local configuration
if filereadable(expand("~/.config/nvim/init.local.vim"))
    source ~/.config/nvim/init.local.vim
endif
