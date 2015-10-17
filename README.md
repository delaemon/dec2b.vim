# dec2bin.vim
###Description
The dec2bin.vim plug-in can convert decimal to binary number literal.

<img src="https://raw.githubusercontent.com/wiki/delaemon/dec2bin.vim/image/usage.gif">

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
nnoremap <silent> ;b    :call Dec2binPrint(<C-r><C-w>)<CR>
nnoremap <silent> ;bp   :call Dec2binPrintPad(<C-r><C-w>)<CR>
nnoremap <silent> ;bi   :call Dec2binReplace(<C-r><C-w>)<CR>
nnoremap <silent> ;bip  :call Dec2binReplacePad(<C-r><C-w>)<CR>
```
