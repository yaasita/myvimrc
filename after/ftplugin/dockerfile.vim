if has('win32') || has('gui_running')
    let s:cmd = "!"
else
    let s:cmd = "!clear && "
endif
let b:imadesyo_command = s:cmd.'docker build '.expand("%:p:h")
