# Indirect pointer to the global .cshrc file.

source /usr/local/lib/global.cshrc

alias phex          "printf '%x\n' $1"
alias pdec          "printf '%d\n' $1"

alias sml           "rlwrap sml"

alias l             "ls"
alias ll            "ls -al"
alias read          "cat $1 | less"

alias rm            "rm -i"

alias git-reset-all "git reset --hard ; git clean -df ; git pull ; "
alias git-addremove "git add . ; git add -u"

alias grep_         'grep \!* -r -i --color *'
alias find_         'find ./ -name "*\!:1-$*" '
alias aklog_        "aklog cs.cmu.edu"

alias gcc_          "gcc -ansi -pedantic -W -Wextra -Wall -g"
alias valgrind_     "valgrind --tool=memcheck --leak-check=yes --show-reachable=yes"
alias diff_         "diff -w -a -b -B"
# alias ./bomb      "gdb ./bomb"

# setenv TERM xterm-256color

set path = (/afs/cs.cmu.edu/academic/class/15410-s11/bin $path)

