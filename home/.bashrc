
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
PS1='\[\033[1;33m\]\t\[\033[0;32m\] \u:\w > \033[0;37;0m\]' 

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /Users/pascal/.npm/_npx/71749/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /Users/pascal/.npm/_npx/71749/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash