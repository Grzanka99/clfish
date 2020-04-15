# Oh My Fish theme made by Cezary Grzanka
# Hardly inspired by mish

set -g cyan (set_color cyan)
set -g yellow (set_color -o yellow)
set -g red (set_color -o red)
set -g green (set_color -o green)
set -g white (set_color -o white)
set -g blue (set_color -o blue)
set -g magenta (set_color -o magenta)
set -g normal (set_color normal)
set -g purple (set_color -o purple)
set -g myc1 (set_color -o ABCDEF)

function _get_host
    set -l hn (hostname -s)
    if [ $hn = 'localhost' ]
        return
    else
        echo "@"$hn
    end
end

function _git_ahead
    set -l commits (command git rev-list --left-right '@{upstream}...HEAD' 2> /dev/null)

    if [ $status != 0 ]
        return
    end

    set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
    set -l ahead (count (for arg in $commits; echo $arg; end | grep -v '^<'))
    switch "$ahead $behind"
        case ''
            printf ''
        case '0 0'
            printf ''
        case '* 0'
            echo -sn $yellow ' ↑'
        case '0 *'
            echo -sn $blue ' ↓'
        case '*'
            echo -sn $yellow ' ↑' $blue '↓'
    end
end

function _is_git_dirty
    echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function _status_color
    set -l exit_code $status

    if test $exit_code -ne 0
        echo -sn $red
    else
        echo -sn $green
    end
    echo ''
end

function fish_prompt
    set -l lc (_status_color) # last color
    set -l cwd (prompt_pwd)

    echo -sn $cyan (whoami) (_get_host)
    echo -sn $blue ' > ' $cwd

    if [ (_is_git_dirty) ]
        echo -sn $red (__fish_git_prompt) $purple '*'
        echo -sn (_git_ahead)
    else
        echo -sn $green (__fish_git_prompt) ''
        echo -sn (_git_ahead)
    end

    # uncomment next line to 2-line layout
    #echo ''



    echo -sn $normal ' >'$myc1'>'$lc'> ' $normal
end
