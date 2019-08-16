autocmd BufRead,BufNewFile *.cgi setf perl
autocmd BufRead,BufNewFile *.mail setf mail

"autocmd BufRead,BufNewFile *hosts,hosts* call s:FTAnsible()
"function! s:FTAnsible()
"    let dir = expand('<amatch>:p:h')
"    if isdirectory(dir . "/roles") && len(glob(dir . "/*.yml")) >= 1
"        setf ansible_inventory
"    endif
"endfunction

"autocmd BufRead,BufNewFile * call s:FTyaml()
"function! s:FTyaml()
"    let line = getline(1)
"    if match(line,'^---$') > -1
"        setf yaml
"    endif
"endfunction
