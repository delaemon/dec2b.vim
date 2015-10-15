# dec2bin.vim
###Description
The dec2bin.vim plug-in can convert decimal to binary number.

###Install
Example that uses vim-plug.
```.vimrc
call plug#begin('~/.vim/plugged')
Plug 'delaemon/dec2bin.vim'
call plug#end()
```

###Usage
dec2bin.vimrc
```
nnoremap <silent> ;b :call Dec2binPrint(<C-r><C-w>)<CR>
nnoremap <silent> ;bi :call Dec2binReplace(<C-r><C-w>)<CR>
```
