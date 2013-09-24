"**** myvimrc *******
" vim: set fdm=marker:
" by yaasita
"

"------------------------------------------
"**** option ************* {{{1

filetype plugin indent on

set autoindent
set autoread
set backspace=2
set cmdheight=2
set complete=.,w
set foldcolumn=2
set foldopen=mark,percent,quickfix,tag
set formatoptions=tcqmM
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=ack\ -l\ $*\ /dev/null
set hidden
set history=60
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:>-,trail:-
set modeline
set modelines=10
set nobackup
set noendofline
set noequalalways
set noswapfile
set nowrapscan
set nrformats=hex,alpha
set number
set ruler
set selection=inclusive
set selectmode=""
set shiftwidth=4
set showcmd
set showmatch
set showtabline=2
set smartcase
set spellcapcheck=
set statusline=%<%f\ %m%r%h%w%=%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}\ %2*%y%0*%6l,%c%V%1*%8P
set tabstop=4
set titlelen=100
set titlestring=%t\ (%<%{expand(\"%:p:h\")})\ \-\ %{v:servername}\ %{v:version}
set viewoptions=folds,cursor
set whichwrap+=[
set whichwrap+=]
set wildmenu
set wildmode=list:longest

syntax on

"}}}
"------------------------------------------
"**** map ************** {{{1

cnoreabbrev t tabe
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
inoremap <silent> <ESC> <ESC>:set imi=0<CR>
inoremap <silent> jj <ESC>
nnoremap ,c :w<CR>:!gcc % <CR>:!a.exe<CR>
nnoremap ,d :w<CR>:!g++ % <CR>:!a.exe<CR>
nnoremap ,e :Imadesyo<CR>
nnoremap / :set ims=0<CR>/
nnoremap <BS> gT
nnoremap <ESC><ESC> :noh<CR>
nnoremap <F11> :RjcolorNext<CR>
nnoremap <F12> :RjcolorBack<CR>
nnoremap <F1> :tab :h<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :vertical resize 40<CR>
nnoremap <F4> :resize 40<CR>
nnoremap <F5> :call NeoToggle()<CR>
nnoremap <F6> :Unite buffer<CR>
nnoremap <F7> :Unite file_rec<CR>
nnoremap <F8> :call SpellToggle()<CR>
nnoremap <F9> :execute "NeoSnippetEdit -split ".&ft<CR>
nnoremap <Left>  zh
nnoremap <Right> zl
nnoremap <SPACE> gt
nnoremap co :copen<CR>
nnoremap tt 0y$
nnoremap wf :call OtherWindowOpen(expand("<cfile>"))<CR>
nnoremap x "_x
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
vnoremap ' di'<C-R>"'<ESC>
vnoremap ( di(<C-R>")<ESC>
vnoremap * y/<C-R>"<CR>
vnoremap [ di[<C-R>"]<ESC>
vnoremap hcm di<!-- <C-R>" --><Esc>
xmap <C-k>     <Plug>(neosnippet_expand_target)

"}}}
"------------------------------------------
"**** command ********** {{{1

autocmd BufRead,BufNewFile *.mq4 setfiletype mql4
autocmd BufRead,BufNewFile *.pco setfiletype cobol
autocmd BufRead,BufNewFile *.txt setfiletype txt
autocmd BufReadPost  * silent! loadview
autocmd BufWritePost * mkview
autocmd Filetype cobol call CobolSet()
autocmd Filetype snippet setlocal noexpandtab list
autocmd Filetype eruby call RubySet()
autocmd Filetype html  call HtmlSet()
autocmd Filetype perl  call PerlSet()
autocmd Filetype qf    nnoremap <buffer> q  :q<CR>
autocmd Filetype ruby  call RubySet()
autocmd Filetype sh    call BashSet()
autocmd Filetype vb    call VbSet()
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep copen

command! -nargs=* -complete=file Pj w | !perl % <args>
command! -nargs=* Ygrep call Ygrep(<f-args>)
command! -nargs=0 CdCurrent cd %:p:h
command! -nargs=1 -complete=file VDsplit vertical diffsplit <args>
command! BlogEscape call BlogEscape() 
command! BundleClean   NeoBundleClean
command! BundleInstall NeoBundleInstall
command! BundleUpdate  NeoBundleUpdate
command! ClearHistory call ClearHistory()
command! Clip set clipboard=unnamed 
command! Cuc call Cuc() 
command! Cul call Cul() 
command! Diffoff diffoff | set fdc=2
command! HankakuSpace call HankakuSpace()
command! Ist tabe ~/.vim/bundle/imadesyo_develop/autoload/imadesyo.vim
command! Kakkofold call Kakkofold() 
command! Sst tabe ~/.vim/bundle/myvimrc/plugin/myvimrc.vim
command! Tabnasi setlocal expandtab | setlocal list | retab
command! Ttp call Ttp()
command! ZenkakuSpace call ZenkakuSpace()

"}}}
"------------------------------------------
"**** function ********* {{{1

function! CobolSet() "{{{2
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
    function CobolMapToggle() "{{{3
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
    endfunction "}}}
    call CobolMapToggle()
    command CobolMapToggle call CobolMapToggle()
endfunction "}}}

function! HtmlSet() "{{{2
    "inoremap <buffer> " ""<LEFT>
    inoremap <buffer> ' ''<LEFT>
    inoremap <buffer> < <><LEFT>
endfunction "}}}

function! PerlSet() "{{{2
    inoremap <buffer> { {}<LEFT>
    inoremap <buffer> [ []<LEFT>
    inoremap <buffer> ( ()<LEFT>
    inoremap <buffer> " ""<LEFT>
    inoremap <buffer> ' ''<LEFT>
endfunction "}}}

function! VbSet() "{{{2
    inoremap <buffer> { {}<LEFT>
    inoremap <buffer> [ []<LEFT>
    inoremap <buffer> ( ()<LEFT>
    inoremap <buffer> " ""<LEFT>
endfunction "}}}

function! RubySet() "{{{2
    setlocal expandtab
    setlocal list
    setlocal shiftwidth=2
    ":retab
endfunction "}}}

function! BashSet() "{{{2
    set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~
endfunction "}}}

function! Ttp() "{{{2
	g!/ttp/d
    g!/\.\(jpg\|png\|bmp\)/d 
    %s/\.\(jpg\|png\|bmp\)/.\1\r/g
    %s/^.*http/http/g
	g!/^http/d
    g!/\.\(jpg\|png\|bmp\)$/d 
endfunction "}}}

function! BlogEscape() "{{{2
    %s/</\&lt;/gc
    %s/>/\&gt;/gc
endfunction "}}}

function! Cul() "{{{2
    highlight CursorLine guibg=NONE gui=underline
    set cursorline
endfunction "}}}

function! Cuc() "{{{2
    highlight CursorColumn guibg=NONE gui=underline
    set cursorcolumn
endfunction "}}}

function! Kakkofold() "{{{2
    setlocal foldmarker={,}
    setlocal fdm=marker
    normal zM
    setlocal fdm=manual
    setlocal foldmarker={{{,}}}
endfunction "}}}

function! HankakuSpace() "{{{2
    syntax match   HankakuSpace / /
    redir @"
    highlight HankakuSpace
    redir END
    if match(@",'cleared') >= 0
        highlight! default link HankakuSpace TabLine
    else
        highlight! default link HankakuSpace NONE
    endif
endfunction "}}}

function! ZenkakuSpace() "{{{2
    syntax match   ZenkakuSpace /　/
    redir @"
    highlight ZenkakuSpace
    redir END
    if match(@",'cleared') >= 0
        highlight! default link ZenkakuSpace WildMenu
    else
        highlight! default link ZenkakuSpace NONE
    endif
endfunction "}}}

function! ClearHistory() "{{{2
    let old_undolevels = &undolevels
    set undolevels=-1
    exe "normal a \<BS>\<Esc>"
    let &undolevels = old_undolevels
    unlet old_undolevels
endfunction "}}}

function! OtherWindowOpen(filename) "{{{2
    execute "normal \<c-w>\<c-p>"
    execute "e ".a:filename
endfunction "}}}

function! Ygrep(...) "{{{2
    let dir = ""
    let exp = ""
    if !exists("a:1")
        let exp = @/
    else
        let exp = a:1
    endif
    if !exists("a:2")
        let dir = "%:p:h"
    endif
    let index = 2
    while index <= a:0
        let dir = dir . " " . a:{index}
        let index = index + 1
    endwhile
    execute 'silent grep! ' . exp . " " . dir
    execute 'redr!'
endfunction "}}}

function! SpellToggle() "{{{2
    setlocal spell!
    if exists("g:syntax_on")
        syntax off
    else
        syntax on
    endif
    setlocal spell?
endfunction "}}}

function! NeoToggle() "{{{2
    if !exists("g:neocomp") || !g:neocomp
        let g:neocomp = 1
        NeoComplCacheEnable
        echo "NeoComplCacheEnable"
    else
        let g:neocomp = 0
        NeoComplCacheDisable
        echo "NeoComplCacheDisable"
    endif
endfunction "}}}

"}}}
"------------------------------------------
"**** memo ************* {{{1

"let &t_SI .= "\eP\e[<r\e\\"
"let &t_EI .= "\eP\e[<s\e[<0t\e\\"
"let &t_te .= "\eP\e[<0t\e[<s\e\\"
"let &t_SI .= "\e[<r"
"let &t_EI .= "\e[<s\e[<0t"
"let &t_te .= "\e[<0t\e[<s"
"
"set term=xterm-256color
"
"inoreabbrev --- ------------------------------------------
"inoreabbrev *** ******************************************

"}}}
"------------------------------------------


