autocmd BufRead,BufNewFile Dockerfile setf dockerfile
autocmd BufRead,BufNewFile *.pco setf cobol
autocmd BufRead,BufNewFile *.mq4 setf mql4
autocmd BufRead,BufNewFile *hosts,hosts* call s:FTAnsible()
function! s:FTAnsible()
    let dir = expand('<amatch>:p:h')
    if isdirectory(dir . "/roles")
        setf ansible_inventory
    endif
endfunction
