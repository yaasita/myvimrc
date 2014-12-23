setlocal expandtab
setlocal list
setlocal shiftwidth=2
":retab
if ( expand("%:p") =~ '\v.+cookbooks/.+')
    NeoSnippetSource ~/.vim/plugged/myvimrc/snippets/chef.snip
endif
if (&fdm == "manual")
    setlocal fdm=syntax
    set foldlevel=5
endif
