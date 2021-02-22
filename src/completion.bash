_new_complete() 
{
    local cur prev opts

    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="$(new --list-templates)"

    if [ ${COMP_CWORD} = 1 ]; then
      COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
      __ltrim_colon_completions "$cur"
    fi
    return 0
}
complete -F _new_complete new
