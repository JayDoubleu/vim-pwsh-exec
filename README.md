# vim-pwsh-exec
Executes buffer's powershell code in neovim's terminal.

## System Requirements:
* Powershell Core : https://github.com/PowerShell/PowerShell#get-powershell




## Installation:
[vim-plug](https://github.com/junegunn/vim-plug) 

```
  Plug 'JayDoubleu/vim-pwsh-exec'
```

## Usage : 
* `:PWSHEXECbuffer` : to execute entire buffer
* `:PWSHEXECline` : to execute current line
* `:PWSHEXECselection` to execute current selection.

Or map to key in your  init.vim :
```
autocmd FileType ps1 noremap <KEY> :PWSHEXEC...<CR>
```

![Alt Text](https://raw.githubusercontent.com/JayDoubleu/vim-pwsh-exec/master/demo.gif)
