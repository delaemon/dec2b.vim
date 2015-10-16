function! Dec2bin(d)
    let b = ""
    let i = a:d
    while i / 2 > 0
        let b = (i % 2 == 0 ? "0" : "1") . b
        let i = i / 2
    endwhile
    let b = (i % 2 == 0 ? "0" : "1") . b
    let l = strlen(b)
    let m = l % 4 > 0 ? 4 - l % 4 : 0
    let j = 0
    let z = ""
    while j < m
        let z = z . "0"
        let j += 1
    endwhile
    let f = z . "%s"
    return printf(f, b)
endfunction

function! Dec2binPrint(d)
    :echom a:d . " == " . Dec2bin(a:d)
endfunction

function! Dec2binReplace(d)
    let b = Dec2bin(a:d)
    let line = getline(".")
    let repl = substitute(line, a:d, b, "")
    call setline(".", repl)
    echom a:d . " -> " . b
endfunction
