# Created by newuser for 5.0.2

# Run on new shell
if [ `which fortune` ]; then
    echo ""
    fortune
    echo ""
fi

autoload -Uz promptinit
promptinit
prompt clint

source ~/.aliases

source ~/.zsh/aliases.zsh

# From the zsh-syntax-highliting package
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Next line was a hint for the use with Skype...
#export PULSE_LATENCY_MSEC=60

# OPAM configuration
. /home/jan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
