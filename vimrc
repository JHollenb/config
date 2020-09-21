set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

set showmatch
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 3 spaces
set shiftwidth=3
set tabstop=3

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

colorscheme elflord
set number
set relativenumber

" Highlight any text that goes over 80 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Remove trailing whitespace on save   
autocmd BufWritePre * %s/\s\+$//e

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
