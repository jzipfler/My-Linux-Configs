# Created by newuser for 5.0.2

# Run on new shell
if [ $(which fortune) ]; then
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

# Applie the colors from /etc/DIR_COLORS
# !!!Take care, prezto engine has its own color scheme
eval $(dircolors /etc/DIR_COLORS)

# Enable moving with ALT+Arraw keys by word
bindkey ";5D" backward-word		#control left
bindkey ";5C" emacs-forward-word	#control right

cless() {
  if test -r $1; then
    case "$1" in
      *.awk|*.groff|*.java|*.js|*.m4|*.php|*.pl|*.pm|*.pod|*.sh|\
        *.ad[asb]|*.asm|*.inc|*.[ch]|*.[ch]pp|*.[ch]xx|*.cc|*.hh|\
        *.lsp|*.l|*.pas|*.p|*.xml|*.xps|*.xsl|*.axp|*.ppd|*.pov|\
        *.diff|*.patch|*.py|*.rb|*.sql|*.ebuild|*.eclass)
      pygmentize -f 256 "$1" | less
      ;;
    .bashrc|.bash_aliases|.bash_environment)
      pygmentize -f 256 -l sh "$1" | less
      ;;
    *.pdml|*.psml)
      pygmentize -f 256 -l xml "$1" | less
      ;;
    *)
      grep "#\!/bin/bash" "$1" > /dev/null
      if [ "$?" -eq "0" ]; then
        pygmentize -f 256 -l sh "$1" | less
      else
        pygmentize -f 256 "$1" | less
      fi
    esac
  else
    echo "File \"${1}\" does not exists or is nor readable" 1>&2
  fi
}

div() {
  echo "Dividing ${1=1} by ${2=1}:"
  echo $((${1}/${2})) Rest $((${1}%${2}))
}

# Autocompletion for grunt.
# Also available for bash
if [ $(which grunt) ]; then
  eval "$(grunt --completion=zsh)"
fi
