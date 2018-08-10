"*** myvimrc ***
" vim: set fdm=marker:

"**** option {{{1

filetype plugin indent on
set ambiwidth=double
set autochdir
set autoindent
set autoread
set background=dark
set backspace=2
set clipboard=unnamed,unnamedplus,exclude:cons\|linux
set cmdheight=2
set complete=.,w
set completefunc=GoogleComplete
set cryptmethod=blowfish2
set diffopt=filler,vertical
set expandtab
set fileencodings=ucs-bom,utf-8,sjis,euc-jp
set fileformats=unix,dos,mac
set foldcolumn=2
set foldopen=mark,percent,quickfix,tag
set formatoptions=tcqmM
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=ack\ -il\ $*\ /dev/null
set hidden
set history=5000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:>-,trail:-
set matchtime=1
set modeline
set modelines=10
set nobackup
set noendofline
set noequalalways
set noerrorbells
set noswapfile
set nowrap
set nowrapscan
set nrformats=hex
set number
set pastetoggle=<F5>
set ruler
set selection=inclusive
set selectmode=""
set shiftwidth=4
set showcmd
set showmatch
set showtabline=2
set smartcase
set spellcapcheck=
set spelllang=en_us
set statusline=%<%f\ %2*%{&mod&&&bt!=#'terminal'?'[+]':''}%0*%{&ro?'[RO]':''}%h%w%=%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}\ %2*%y%0*%6l,%c%V%1*%8P
set t_vb=
set tabstop=4
set tags=tags;
set titlelen=100
set titlestring=%t\ (%<%{expand(\"%:p:h\")})\ \-\ %{v:servername}\ %{v:version}
set undodir=~/.vim/undo/
set undofile
set viewdir=~/.vim/view/
set viewoptions=folds,cursor
set visualbell
set whichwrap+=[
set whichwrap+=]
set wildmenu
set wildmode=list:longest,full
syntax on

"}}}
"**** map {{{1

cnoreabbrev Y Ygrep
cnoreabbrev t tabe
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
cnoremap <C-j> <Right>
cnoremap <C-k> <Left>
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
inoremap <C-S> <F5>
inoremap <silent> jj <ESC>
nnoremap + ,
nnoremap ,d :DeleteComment<CR>
nnoremap ,e :Imadesyo<CR>
nnoremap / :set ims=0<CR>/
nnoremap <BS> gT
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nnoremap <C-S> i<F5>
nnoremap <ESC><ESC> :noh<CR>
nnoremap <F1> :tab :h<CR>
nnoremap <F2> :WindowSizeToggle<CR>
nnoremap <F3> :call SpellToggle()<CR>
nnoremap <Left>  zh
nnoremap <Right> zl
nnoremap <SPACE> gt
nnoremap Y y$
nnoremap co :copen<CR>
nnoremap s <Nop>
nnoremap sb :Unite buffer<CR>
nnoremap sc :call CdPaste()<CR>
nnoremap se :call MyNeoSnippetEdit()<CR>
nnoremap sf :Unite file_rec<CR>
nnoremap sg :Unite line<CR>
nnoremap sh :belowright :terminal<CR>
nnoremap sl :Unite file_mru<CR>
nnoremap sn :NERDTreeToggle<CR>
nnoremap sp :Unite neosnippet<CR>
nnoremap sv :call ToggleVe()<CR>
nnoremap x "_x
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
vnoremap * y/<C-R>"<CR>
vnoremap s !ore_escape_filename.pl<CR>
xmap <C-k>     <Plug>(neosnippet_expand_target)

" terminal mode
if has('terminal')
    tnoremap <C-T> <C-W>""
    tnoremap <C-Q> <C-W>N
endif

"}}}
"**** command {{{1

augroup PasteOff
    autocmd!
    autocmd InsertLeave * set nopaste
augroup END

augroup SaveView
    autocmd!
    autocmd BufReadPost  * silent! loadview
    autocmd BufWritePost * call MkView()
augroup END

augroup Quickfix
    autocmd!
    autocmd Filetype qf         nnoremap <buffer> q  :q<CR>
    autocmd QuickfixCmdPost make,grep,grepadd,vimgrep copen
augroup END

command! -nargs=* Ygrep call Ygrep(<f-args>)
command! -nargs=0 B e ~/.bashrc
command! -nargs=0 BookmarkOpen tabe ~/.NERDTreeBookmarks
command! -nargs=0 CdCurrent cd %:p:h
command! -nargs=0 ClearHistory call ClearHistory()
command! -nargs=0 CopyPaste setlocal nonu foldcolumn=0
command! -nargs=0 Cuc call Cuc() 
command! -nargs=0 Cul call Cul() 
command! -nargs=0 DeleteComment g/^\s*#\|^\s*$/d
command! -nargs=0 Diffoff diffoff! | set fdc=2
command! -nargs=0 Kakkofold call Kakkofold() 
command! -nargs=0 M e ~/memo.md
command! -nargs=0 Migemo call Migemo()
command! -nargs=0 RjcolorToggle call RjcolorToggle()
command! -nargs=0 SSH e ~/.ssh/config
command! -nargs=0 Spell call SpellToggle()
command! -nargs=0 T tabe %
command! -nargs=0 Tabnasi setlocal expandtab | setlocal list | retab
command! -nargs=0 V tabe ~/.vim/pack/plugins/start/myvimrc/plugin/myvimrc.vim
command! -nargs=0 VL tabe $MYVIMRC
command! -nargs=0 W call WikiOpen()
command! -nargs=0 WindowSizeToggle call WindowSizeToggle()
command! -nargs=1 -complete=file VDsplit vertical diffsplit <args>
command! -nargs=? Eiwa call Goo("ej",<f-args>)
command! -nargs=? Kokugo call Goo("jn",<f-args>)
command! -nargs=? Waei call Goo("je",<f-args>)


"}}}
"**** function {{{1

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

function! ClearHistory() "{{{2
    let old_undolevels = &undolevels
    set undolevels=-1
    exe "normal a \<BS>\<Esc>"
    let &undolevels = old_undolevels
    unlet old_undolevels
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
        "let dir = "%:p:h"
        let dir = "."
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

function! Migemo() "{{{2
    if hasmapto('\<CR>','c')
        cunmap <expr><CR>
    else
        cnoremap <expr><CR> migemosearch#replace_search_word()."\<CR>"
    endif
endfunction "}}}

function! WindowSizeToggle() "{{{2
    if hasmapto('<C-w><','n') 
        nunmap <C-h>
        nunmap <C-j>
        nunmap <C-k>
        nunmap <C-l>
    else
        nnoremap <C-h> <C-w><
        nnoremap <C-j> <C-w>-
        nnoremap <C-k> <C-w>+
        nnoremap <C-l> <C-w>>
    endif
endfunction "}}}
WindowSizeToggle

function! RjcolorToggle() "{{{2
    if hasmapto('RjcolorNext','n') 
        nunmap <C-n>
        nunmap <C-p>
    else
        nnoremap <C-n> :RjcolorNext<CR>
        nnoremap <C-p> :RjcolorBack<CR>
    endif
endfunction "}}}

function! GoogleComplete(findstart, base) "{{{2
    if a:findstart
        let line = getline('.')
        let start = col('.') - 1
        while start > 0 && line[start - 1] =~ '\S'
            let start -= 1
        endwhile
        return start
    else
        let ret = system('curl -s -G'
                    \ . ' --data-urlencode "q=' . a:base . '"'
                    \ . ' --data-urlencode "client=firefox"'
                    \ . ' --data-urlencode "hl=ja"'
                    \ . ' --data-urlencode "ie=utf8"'
                    \ . ' --data-urlencode "oe=utf8"'
                    \ . ' "http://suggestqueries.google.com/complete/search"'
                    \)
        let res = split(substitute(ret,'\[\|\]\|"',"","g"),",")
        return res
    endif
endfunction "}}}

function! MkView() "{{{2
    if &fdm != "diff"
        mkview
    endif
endfunction "}}}

function! Goo(jisyo,...) "{{{2
	if has('win32') || has('gui_running')
		let l:cmd = "!"
    else
		let l:cmd = "!clear && "
    endif
    if a:0 == 0
        let l:search_word = expand("<cword>")
    else
        let l:search_word = a:1
    endif
    if a:jisyo == "ej"
        let l:search_tag = " | perl -nle 'print if /list-search-a/i../section/ or /音節/../出典/'"
    elseif a:jisyo == "je"
        let l:search_tag = " | perl -nle 'print if /list-search-a/i../section/ or /<h1 class=.header ttl-a.>/../出典/'"
    elseif a:jisyo == "jn"
        let l:search_tag = " | perl -nle 'print if /list-search-a/i../section/ or /<div class=.kokugo.>/../出典/'"
    endif
    execute l:cmd . "curl -s -L " .
                \ "http://dictionary.goo.ne.jp/srch/" . a:jisyo . "/" .
                \ "$(echo " . l:search_word . " | nkf -wMQ | tr = \\%)/m0u/" . 
                \ l:search_tag .
                \ " | perl -ple 's/<.+?>//g;s/\\s*//' | perl -nle 'print unless /^$/'" .
                \ " | head -50"
endfunction "}}}

function! MyNeoSnippetEdit() "{{{2
    execute "NeoSnippetEdit -split ".&ft
endfunction "}}}

function! WikiOpen() "{{{2
    let wiki = expand("~/") . "wiki/README.md"
    if filereadable(wiki)
        e ~/wiki/README.md
        CdCurrent
    else
        echomsg "wikiがない"
    endif
endfunction "}}}

function! CdPaste() "{{{2
    exe "cd " . @" 
endfunction "}}}

function! ToggleVe() "{{{2
    if &ve == 'all'
        set ve=
    else
        set ve=all
    endif
endfunction "}}}

"}}}
