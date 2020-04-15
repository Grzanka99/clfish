function fish_right_prompt
    set -l exit_code $status

    if test $exit_code -ne 0
        set_color -o red
        printf ' code: %d' $exit_code
    else
        set_color -o green
    end
    set_color ABCDEF
    printf ' (%s) ' (date +%H:%M:%S)
    set_color normal
end
