let s:save_cpo = &cpo
set cpo&vim

let s:unite_akb48 = {'name': 'akb48'}

function! s:unite_akb48.gather_candidates(args, context)
    return [
                \   { 'word': '小嶋陽菜', 'source': 'akb48', 'kind': 'word' },
                \   { 'word': '松井玲奈', 'source': 'akb48', 'kind': 'word' },
                \ ]
endfunction

function! unite#sources#akb48#define() "{{{
    return s:unite_akb48
endfunction "}}}

let &cpo = s:save_cpo
unlet s:save_cpo
