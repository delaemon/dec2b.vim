function! Dec2bin(d)
    let b = ""
    let i = a:d
    while i / 2 > 0
        let b = (i % 2 == 0 ? "0" : "1") . b
        let i = i / 2
    endwhile
    let b = (i % 2 == 0 ? "0" : "1") . b
    return b
endfunction

function! Dec2binPad(b)
    let l = strlen(a:b)
    let m = l % 4 > 0 ? 4 - l % 4 : 0
    let j = 0
    let z = ""
    while j < m
        let z = z . "0"
        let j += 1
    endwhile
    return z . a:b
endfunction

function! Dec2binFormat(b)
    let f = "0b%s"
    return printf(f, a:b)
endfunction

function! Dec2binPrint(d)
    let b  = Dec2bin(a:d)
    let bf = Dec2binFormat(b)
    echom a:d . " == " . bf
endfunction

function! Dec2binPrintPad(d)
    let b  = Dec2bin(a:d)
    let bp = Dec2binPad(b)
    let bf = Dec2binFormat(bp)
    echom a:d . " == " . bf
endfunction

function! Dec2binReplace(d)
    let b = Dec2bin(a:d)
    let bf = Dec2binFormat(b)
    let line = getline(".")
    let repl = substitute(line, a:d, bf, "")
    call setline(".", repl)
    echom a:d . " -> " . bf
endfunction

function! Dec2binReplacePad(d)
    let b = Dec2bin(a:d)
    let bp = Dec2binPad(b)
    let bf = Dec2binFormat(bp)
    let line = getline(".")
    let repl = substitute(line, a:d, bf, "")
    call setline(".", repl)
    echom a:d . " -> " . bf
endfunction
