# git branch stuff for prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git*' formats '%b'
setopt PROMPT_SUBST
PROMPT='%F{#625EF6}%*%f %F{#50F862}%~%f %F{red}${vcs_info_msg_0_}%f $ '

# prompt backup
# PROMPT='%B%F{240}%~%f%b $ '
#PS1="%B%F{#50F862}%n@%m%f%b:%B%F{#625EF6}%~ %#%f%b "

fortune -s | cowsay -f tux | lolcat

alias brewit="brew upgrade && brew cleanup"
alias reload="source ~/.zshrc"
alias la="ls -a"
alias py="python3"
# alias pip="pip3"
alias ll="ls -l"
alias lla="ls -a -l"
alias blender="cd /Applications/Blender.app/Contents/MacOS && ./Blender"
alias getip="dig +short myip.opendns.com @resolver1.opendns.com"
alias caskit="brew upgrade --cask"
alias cit="ssh mschmutz@ssh.cs.utahtech.edu"
# alias server="python3 -m http.server --cgi 8080"
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/"
alias nim="nvim"
alias penv="source .env/bin/activate"
alias pvenv="source .venv/bin/activate"
alias spec="pytest --spec"
alias apache="/usr/local/opt/httpd/bin/httpd -D FOREGROUND"
alias temp="sudo powermetrics -n 1 --samplers smc"
alias avim='NVIM_APPNAME=astro nvim'
alias nvim='NVIM_APP=nvim nvim'

# mongodb server shell functions 
startdb() {
  brew services start mongodb-community
}

stopdb() {
  brew services stop mongodb-community
}

alias admindb="mongosh -u admin -p admin --authenticationDatabase admin"

# redis session store shell functions
start-redis() {
  brew services start redis
}

stop-redis() {
  brew services stop redis
}

# global aliases
alias -g NULL="2> /dev/null"

#fpath=(/usr/local/share/zsh-completions $fpath)
export TERM=screen-256color
#export PATH="/usr/local/opt/qt/bin:$PATH"
#export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

# Colors?
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# pyenv stuff
eval "$(pyenv init --path)" 

# nvm stuff
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh"  ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# thefuck stuff
eval $(thefuck --alias)

# pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export EDITOR="vim"

# PATH export for m4
#echo 'export PATH="/usr/local/opt/m4/bin:$PATH"' >> ~/.zshrc
#export PATH="/usr/local/opt/m4/bin:$PATH"
