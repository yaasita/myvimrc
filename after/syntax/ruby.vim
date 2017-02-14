setlocal expandtab
setlocal list
setlocal shiftwidth=2
":retab
if (&fdm == "manual")
    setlocal fdm=syntax
    set foldlevel=5
endif
"inoremap <buffer> { {}<LEFT>
"inoremap <buffer> [ []<LEFT>
"inoremap <buffer> ( ()<LEFT>
"inoremap <buffer> " ""<LEFT>
"inoremap <buffer> ' ''<LEFT>
