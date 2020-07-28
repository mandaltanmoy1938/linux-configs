# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2147483647
SAVEHIST=2147483647
setopt autocd nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tma/.zshrc'

autoload -Uz compinit
compinit

#exports
export _JAVA_AWT_WM_NONREPARENTING=1
export FZF_ALT_C_COMMAND='fd -t d --hidden'
export FZF_ALT_C_OPTS='--preview '\''tree -C {} | head -200'\'
export FZF_CTRL_T_COMMAND='fd --hidden'
export FZF_CTRL_T_OPTS='--preview '\''(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'\'
export FZF_BASE=/usr/share/fzf/
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme


[[ -f /usr/share/LS_COLORS/dircolors.sh ]] && source /usr/share/LS_COLORS/dircolors.sh

#path to oh-my-zsh
ZSH=/usr/share/oh-my-zsh/
#plugins
plugins=(
	dircycle 
	dirpersist 
	dirhistory 
	docker-compose
	fzf
)
#activate oh-my-zsh
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/.p10k.zsh ]] || source ~/.config/.p10k.zsh

#aliases
alias vim='nvim'
alias reloadwm='swaymsg reload'
alias restartwm='swaymsg restart'
alias htop='gotop'
