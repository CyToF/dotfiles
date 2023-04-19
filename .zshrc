#PROMPT="%B%K{53}%F{14}%n%f%k%b%K{53}%F{14}⚿%f%k%B%K{53}%F{14}%m%f%k%b%K{53}%~%k 💣 " purple and cyan
#PROMPT="%F{yellow}👉 %F{green}%n@%m %F{blue}%~%F{red}%# %f"
#RPROMPT="%B%K{6}%F{black}⌛%f%k%b%B%K{6}%F{black}%t%f%k%b"

#PROMPT="%B%K{59}%F{7}[%f%k%b%B%K{53}%n%k%b%B%K{59}(at)%k%b%B%K{59}%m%k%b%B%K{59}] %k%b%B%K{59}%~%k%b%K{236} 💣 %k "

#### white and orange 
#PROMPT="%B%K{white}%F{166}⚙ %f%k%b%B%K{white}%F{black}%n%f%k%b%K{166}%F{black} ☗  %f%k%B%K{166}%F{black}%~%f%k%b%K{166} %k%B%K{166}%F{4}❯%f%k%b%K{166}%F{93}❯%f%k "

### dark purple and purple 
#PROMPT="%B%K{133}%F{black}⚙ %f%k%b%B%K{133}%F{black}%n%f%k%b%K{53}%F{black} ☗  %f%k%B%K{236}%~%k%b%K{236} %k%B%K{236}%F{19}❯%f%k%b%K{236}%F{93}❯%f%k "

setopt TRANSIENT_RPROMPT
#RPROMPT="$?"
source /home/def/.config/zsh/plugins/extract.plugin.zsh
#source /home/def/.config/zsh/manjaro.rc
_CONFIG_D="/home/def/.config/zsh"
source $_CONFIG_D/completion.zsh
source $_CONFIG_D/environment.zsh
#source $_CONFIG_D/
#                 🩸 🔥 ✅ 🤖 💀 ☠️ 👽 👾 👉 👈 🧠 🫀 🦾 👤 🐧 🐋 🐳 ⚡️ 💧 ☀️  ⛅️ ☁️ ❄️ 🧊 🚀 🗼 ⚙️  🪤  
# 💣 🧨 🧱 📁 🔎 🌐 

PROMPT="%B%F{5}%n%f%b  %B%F{142}%~%f%b%F{46} ❯ %f"

# history
# -*- sh -*-

setopt extended_history		# save timestamps
setopt share_history			# share history accross zsh sessions
setopt hist_ignore_all_dups	# ignores duplicates
setopt hist_ignore_space		# don't store commands starting with a space

HISTFILE=~/.zsh_history
HISTSIZE=30000
SAVEHIST=30000

# Ctrl-r search in the history with patterns
(( $+widgets[history-incremental-pattern-search-backward] )) &&	\
    bindkey '^r' history-incremental-pattern-search-backward
# ctrl+right/left 
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


#eval "$(starship init zsh)"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias getsky='curl "de.wttr.in/cairo?lang=en"'
alias eip='curl https://echoip.de'
alias digit='dig @1.1.1.1 whoami.cloudflare ch txt +short'
alias copy='xclip -selection clipboard' # copy the output usage: echo "what you want to copy" | copy
alias tb="nc termbin.com 9999
alias runrest='curl ascii.live/forrest'




#transset-df "1" --id "$WINDOWID"  >/dev/null

ExitStatusCode () {
	if [ $? -eq 0 ]; then
		RPROMPT="%B%F{2}✓%f%b"

	else
		RPROMPT="%B%F{1}✕%f%b"
	fi
}


typeset -a precmd_functions
precmd_functions+=(ExitStatusCode)

setopt menucomplete


export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export NOTO_EMOJI_FONT="Noto Color Emoji"
