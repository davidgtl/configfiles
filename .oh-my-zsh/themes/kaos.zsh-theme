PROMPT='%F{208}%n%f%{$fg[white]%}@%F{039}%M%f%{$reset_color%}:%B%{$fg[green]%}%~%{$reset_color%} $(git_prompt_info) 
%(!.#.>) '
RPROMPT='%B%F{039}%!%f%{$reset_color%}'

#terminfo_down_sc=$terminfo[cud1]$terminfo[cuu1]$terminfo[sc]$terminfo[cud1]

#function insert-mode () { echo "-- INSERT --" }
#function normal-mode () { echo "-- NORMAL --" }

precmd () {
    # yes, I actually like to have a new line, then some stuff and then 
    # the input line
    print -rP ""

    if [ $ZSH_TIMER ]; then
       
       ZSH_TIMER=$(($(python -c 'from time import time; print int(round(time() * 1000))') - $ZSH_TIMER))
       export RPROMPT="%F{cyan}$(echo $ZSH_TIMER)ms %B%F{039}%!%f%{$reset_color%}"
       unset $ZSH_TIMER
    fi

    # this is required for initial prompt and a problem I had with Ctrl+C or
    # Enter when in normal mode (a new line would come up in insert mode,
    # but normal mode would be indicated)
    #PS1="%{$terminfo_down_sc$(insert-mode)$terminfo[rc]%}%~ $ "
}
#function set-prompt () {
#    case ${KEYMAP} in
#      (vicmd)      VI_MODE="$(normal-mode)" ;;
#      (main|viins) VI_MODE="$(insert-mode)" ;;
#      (*)          VI_MODE="$(insert-mode)" ;;
#    esac
#    PROMPT="%{$terminfo_down_sc$VI_MODE$terminfo[rc]%}%~ $ "
#}

#function zle-line-init zle-keymap-select {
#    set-prompt
#    zle reset-prompt
#}
#preexec () { print -rn -- $terminfo[el]; }

preexec(){
    ZSH_TIMER=$(python -c 'from time import time; print int(round(time() * 1000))')
}

#zle -N zle-line-init
#zle -N zle-keymap-select

ZSH_THEME_GIT_PROMPT_PREFIX="%F{154}±|%f%F{124}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✘%b%F{154}|%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%F{154}|"

