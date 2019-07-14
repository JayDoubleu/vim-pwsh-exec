command! PWSHEXECbuffer call pwshexec#PWSHEXEC(getline(1, '$'))
command! PWSHEXECline call pwshexec#PWSHEXEC(getline('.'))
command! PWSHEXECselection call pwshexec#PWSHEXEC(getline(getpos("'<")[1], getpos("'>")[1]))
