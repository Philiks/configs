# PS1
autoload -U colors && colors
setopt PROMPT_SUBST
PS1='%B%{$fg[yellow]%}%n %{$fg[magenta]%}%~ %{$fg[white]%}$(__git_ps1 " %s ")%{$fg[red]%}>%{$fg[green]%}>%{$fg[blue]%}>%{$reset_color%}%b '

HISTFILE=~/.cache/zsh/history
HISTSIZE=5000
SAVEHIST=5000
setopt nomatch
bindkey -v
zstyle :compinstall filename '/home/felix/.zshrc'

# LS Colors
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}  

autoload -Uz compinit
compinit

# Edit line in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Aliases
alias sc="source ~/.zshrc"
alias ls="ls -lGh --color=auto"
alias la="ls -lGhA --color"
alias lsd="ls -lGh --color -d"
alias lad="ls -lGhA --color -d"
alias grep="grep -Hnr"
#  Git Aliases
alias gs="git status"
alias ga="git add"
alias gb="git branch"
alias gc="git commit -m"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gd="git diff"
alias gl="git pull"
alias gp="git push"
alias glg="git log --graph"
alias gm="git merge"
alias grh="git reset --hard"
alias grm="git rm"
alias grs="git restore"
# For Kitty terminal + ImageMagick
alias icat="kitty +kitten icat"

# Sources
#  Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#  Git config
source /usr/share/zsh/plugins/git-prompt.sh
