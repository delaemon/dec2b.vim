function! Dec2bin(d, ...)
    let n = a:d / 2
    let r = a:d % 2 == 0 ? 0 : 1
    if n > 0
        let t = a:0 > 0 ? a:1 : ""
        return Dec2bin(n, r.t)
    endif
    let t = a:0 > 0 ? a:1 : ""
    let l = strlen(r.t)
    let m = l + (l % 4 > 0 ? 4 - l % 4 : 0)
    let f = "%0".m."d"
    let b = printf(f, r.t)
    return b
endfunction

function! Dec2binPrint(d)
    :echom Dec2bin(a:d)
endfunction

function! Dec2binReplace(d)
    :let b = Dec2bin(a:d)
    :let line = getline(".")
    :let repl = substitute(line, a:d, b, "")
    :call setline(".", repl)
endfunction
