set ft=
setlocal indentexpr=
setlocal autoindent
setlocal list 
setlocal cursorline
setlocal cursorcolumn
setlocal expandtab
setlocal textwidth=0
syntax clear cobolBadLine
highlight! default link cobolMarker Comment
retab
function CobolMapToggle()
    if hasmapto('Z','i') 
        :iunmap <buffer> a
        :iunmap <buffer> b
        :iunmap <buffer> c
        :iunmap <buffer> d
        :iunmap <buffer> e
        :iunmap <buffer> f
        :iunmap <buffer> g
        :iunmap <buffer> h
        :iunmap <buffer> i
        :iunmap <buffer> j
        :iunmap <buffer> k
        :iunmap <buffer> l
        :iunmap <buffer> m
        :iunmap <buffer> n
        :iunmap <buffer> o
        :iunmap <buffer> p
        :iunmap <buffer> q
        :iunmap <buffer> r
        :iunmap <buffer> s
        :iunmap <buffer> t
        :iunmap <buffer> u
        :iunmap <buffer> v
        :iunmap <buffer> w
        :iunmap <buffer> x
        :iunmap <buffer> y
        :iunmap <buffer> z
    else
        :inoremap <buffer> a A
        :inoremap <buffer> b B
        :inoremap <buffer> c C
        :inoremap <buffer> d D
        :inoremap <buffer> e E
        :inoremap <buffer> f F
        :inoremap <buffer> g G
        :inoremap <buffer> h H
        :inoremap <buffer> i I
        :inoremap <buffer> j J
        :inoremap <buffer> k K
        :inoremap <buffer> l L
        :inoremap <buffer> m M
        :inoremap <buffer> n N
        :inoremap <buffer> o O
        :inoremap <buffer> p P
        :inoremap <buffer> q Q
        :inoremap <buffer> r R
        :inoremap <buffer> s S
        :inoremap <buffer> t T
        :inoremap <buffer> u U
        :inoremap <buffer> v V
        :inoremap <buffer> w W
        :inoremap <buffer> x X
        :inoremap <buffer> y Y
        :inoremap <buffer> z Z
    endif
endfunction
call CobolMapToggle()
command CobolMapToggle call CobolMapToggle()
