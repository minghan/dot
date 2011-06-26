
# START OF DUMP

bindkey "^[[3~" delete-char


# END OF DUMP



# alias

alias k='tree'
alias ls='ls --color'
# alias ltr='ls -ltr'
alias l='ls'
alias ll='ls -la'

alias lsc='ls --hide="*.o" --hide="*.dep"'

alias sml='rlwrap sml'

alias simics='make && simics4'

# alias imported from cshrc

alias rm="rm -i -v"

alias git-reset-all="git reset --hard ; git clean -df ; git pull ; "
alias git-addremove="git add . ; git add -u"

grep_() { grep $@ -r -i --color='always' * }
find_() { find ./ -name "*$@*" }

alias aklog_="aklog cs.cmu.edu"

alias gcc_="gcc -ansi -pedantic -W -Wextra -Wall -g"
alias valgrind_="valgrind --tool=memcheck --leak-check=yes --show-reachable=yes"
alias diff_="diff -w -a -b -B"


# useful keybindings

# Meta-u to chdir to the parent directory
bindkey -s '\eu' '^Ucd ..; ls^M'

# If AUTO_PUSHD is set, Meta-p pops the dir stack
# bindkey -s '\ep' '^Upopd >/dev/null; dirs -v^M'

# Pipe the current command through less
# bindkey -s "\el" " 2>&1|less^M"

# export TERM=rxvt

for c in cp chmod chown rename; do
    alias $c="$c -v"
done

export PATH=/afs/cs.cmu.edu/academic/class/15410-s11/bin:$PATH

export EDITOR="vim"


# START OF OH-MY-ZSH

bindkey '^[[Z' reverse-menu-complete
bindkey ' ' magic-space # also do history expansion on space



## Command history configuration

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_dups # ignore duplication command history list
setopt share_history # share command history data

setopt hist_verify
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space

setopt SHARE_HISTORY
setopt APPEND_HISTORY


# Changing/making/removing directory
setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# alias cd..='cd ..'
# alias cd...='cd ../..'
# alias cd....='cd ../../..'
# alias cd.....='cd ../../../..'
# alias cd/='cd /'

# END OF OH-MY-ZSH
