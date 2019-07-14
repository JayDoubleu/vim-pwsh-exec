if exists('g:loaded_pwsh_exec') || &compatible
  finish
else
  let g:loaded_pwsh_exec = 'yes'
endif

function! CloseBuf() abort
    for i in tabpagebuflist()
        if getbufvar(i, '&buftype') ==# 'terminal'
            exec expand(":" . i . "bw!")
        endif
    endfor
endfunction


setlocal shell=sh
let plugindir = expand('<sfile>:p:h:h')
let absPath  = expand(plugindir . '/plugin/base64.ps1')
let s:convertB64 = expand('pwsh -noprofile -command ''$Input | ' . absPath . '''')

function! pwshexec#PWSHEXEC(buff)
    let base64_output = system(s:convertB64, a:buff)
    let s:execCmd = expand('pwsh -encodedCommand ' . base64_output)
    let tmpfile = tempname()
    call writefile(split(s:execCmd, "\n", 1), tmpfile)
    call CloseBuf()
    exec  expand(':belowright split| terminal ' . 'pwsh ' . tmpfile)
    exec ":wincmd w"
endfunction
