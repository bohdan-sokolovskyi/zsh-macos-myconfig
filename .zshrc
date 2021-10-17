################################## PROMPT ##################################
# load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# format the vcs_info_msg_0_ variable
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git:*' formats 'B: %{$fg[yellow]%}[$fg[cyan]%}%b%{$fg[yellow]%}]'

# enable substitution in the prompt.
setopt prompt_subst

# prompt
autoload -U colors && colors 

export PS1="%{$fg[green]%}╔ %{$fg[red]%}D: %{$fg[yellow]%}[%{$fg[magenta]%}%~%{$fg[yellow]%}] %{$fg[red]%}D&T: %{$fg[yellow]%}[%{$fg[magenta]%}$(date +%d.%m.%y-%H:%M:%S)%{$fg[yellow]%}] %{$fg[red]%} ${vcs_info_msg_0_} 
%{$fg[green]%}╚ %{$fg[yellow]%}[%{$fg[cyan]%}%n%{$fg[yellow]%}] %{$fg[blue]%}λ%{$fg[yellow]%}(%{$fg[magenta]%}\$%{$fg[yellow]%}) %{$fg[green]%}⇒ %{$fg[white]%}" 

################################## ALIASES ##################################
alias sshg='ssh -Y4C'
alias ll='ls -laG'
alias l='ll'
alias untar='tar -zxvf'
alias wget='wget -c'
alias getpass='openssl rand -base64 20'
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias ipe='curl ipinfo.io/ip'
alias ipi='ipconfig getifaddr en0'
alias c='clear'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias diff='colordiff' # need install colordiff
alias h='history'
alias j='jobs -l'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias ports='netstat -tulanp'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'


