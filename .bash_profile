export TAICHI_NUM_THREADS=8
export TAICHI_REPO_DIR=/Users/davidghitulescu/workspaces/taichi/taichi
export PYTHONPATH=$TAICHI_REPO_DIR/python/:$PYTHONPATH
export PATH=$TAICHI_REPO_DIR/bin/:$PATH
export TAICHI_NUM_THREADS=8
export TAICHI_REPO_DIR=/Users/davidghitulescu/workspaces/taichi/taichi
export PYTHONPATH=$TAICHI_REPO_DIR/python/:$PYTHONPATH
export PATH=$TAICHI_REPO_DIR/bin/:$PATH
export TAICHI_NUM_THREADS=8
export TAICHI_REPO_DIR=/Users/davidghitulescu/workspaces/taichi/taichi
export PYTHONPATH=$TAICHI_REPO_DIR/python/:$PYTHONPATH
export PATH=$TAICHI_REPO_DIR/bin/:$PATH
export TAICHI_NUM_THREADS=8
export TAICHI_REPO_DIR=/Users/davidghitulescu/workspaces/taichi/taichi
export PYTHONPATH=$TAICHI_REPO_DIR/python/:$PYTHONPATH
export PATH=$TAICHI_REPO_DIR/bin/:$PATH

_task()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "modify +pending +testing +doing +completed -pending -testing -doing -completed" -- $cur) )
}
complete -F _task task

C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

set -o vi
set show-mode-in-prompt on
set vi-ins-mode-string ins #$C_LIGHTPURPLE\(ins\)$C_DEFAULT
set vi-cmd-mode-string cmd #$C_LIGHTBLUE\(cmd\)$C_DEFAULT
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PS1="\n$C_LIGHTGREEN\u$C_WHITE@$C_LIGHTBLUE\h$C_DEFAULT:$C_LIGHTYELLOW\w$C_LIGHTBLUE\$\m$C_DEFAULT\n"
export ANDROID_HOME=/Users/$USER/Library/Android/sdk/
export PATH=$PATH:$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
alias cn4f="ssh -p1322 files@78.87.218.143"
alias fw8008="ssh -N -f -L localhost:8008:localhost:8888 aeron@aeron.ddns.net -p37"

##
# Your previous /Users/davidghitulescu/.bash_profile file was backed up as /Users/davidghitulescu/.bash_profile.macports-saved_2019-09-10_at_00:06:17
##

# MacPorts Installer addition on 2019-09-10_at_00:06:17: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

