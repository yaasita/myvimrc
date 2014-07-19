command! -nargs=* -complete=file Pj w | !perl % <args>
inoremap <buffer> { {}<LEFT>
inoremap <buffer> [ []<LEFT>
inoremap <buffer> ( ()<LEFT>
inoremap <buffer> " ""<LEFT>
inoremap <buffer> ' ''<LEFT>
