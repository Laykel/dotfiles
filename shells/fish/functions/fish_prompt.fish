function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus

    set -g __fish_git_prompt_char_stateseparator ' '
    if not set -q __fish_git_prompt_show_informative_status
        set -g __fish_git_prompt_show_informative_status 1
    end
    if not set -q __fish_git_prompt_hide_untrackedfiles
        set -g __fish_git_prompt_hide_untrackedfiles 1
    end
    if not set -q __fish_git_prompt_color_branch
        set -g __fish_git_prompt_color_branch 1e98f0 --bold
    end
    if not set -q __fish_git_prompt_showupstream
        set -g __fish_git_prompt_showupstream "informative"
    end
    if not set -q __fish_git_prompt_char_upstream_ahead
        set -g __fish_git_prompt_char_upstream_ahead "↑"
    end
    if not set -q __fish_git_prompt_char_upstream_behind
        set -g __fish_git_prompt_char_upstream_behind "↓"
    end
    if not set -q __fish_git_prompt_char_upstream_prefix
        set -g __fish_git_prompt_char_upstream_prefix ""
    end
    if not set -q __fish_git_prompt_char_stagedstate
        set -g __fish_git_prompt_char_stagedstate "●"
    end
    if not set -q __fish_git_prompt_char_dirtystate
        set -g __fish_git_prompt_char_dirtystate "✚"
    end
    if not set -q __fish_git_prompt_char_untrackedfiles
        set -g __fish_git_prompt_char_untrackedfiles "…"
    end
    if not set -q __fish_git_prompt_char_invalidstate
        set -g __fish_git_prompt_char_invalidstate "✖"
    end
    if not set -q __fish_git_prompt_char_cleanstate
        set -g __fish_git_prompt_char_cleanstate "✔"
    end
    if not set -q __fish_git_prompt_color_dirtystate
        set -g __fish_git_prompt_color_dirtystate brblue
    end
    if not set -q __fish_git_prompt_color_stagedstate
        set -g __fish_git_prompt_color_stagedstate yellow
    end
    if not set -q __fish_git_prompt_color_invalidstate
        set -g __fish_git_prompt_color_invalidstate red
    end
    if not set -q __fish_git_prompt_color_untrackedfiles
        set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
    end
    if not set -q __fish_git_prompt_color_cleanstate
        set -g __fish_git_prompt_color_cleanstate green --bold
    end

    set -l color_cwd
    set -l prefix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
        case '*'
            set color_cwd $fish_color_cwd
    end

    echo -n '['

    # PWD
    set_color --bold $color_cwd
    echo -n (prompt_pwd)
    set_color normal

    # VCS
    if fish_vcs_prompt > /dev/null
        printf ',%s' (fish_vcs_prompt)
    end

    # Execution time
    set -l execution_seconds (math $CMD_DURATION / 1000)
    set -l truncated (math "floor($execution_seconds)")
    if test "$truncated" -ne 0
        echo -n ', '
        set_color --bold magenta
        printf '%ss' (math "floor($execution_seconds)")
        set_color normal
    end

    # Status
    set -l pipestatus_string (__fish_print_pipestatus ", " "" "|" (set_color normal) (set_color --bold $fish_color_status) $last_pipestatus)
    echo -n $pipestatus_string
    set_color normal

    echo -n '] '

    # Virtualenv
    # if test $VIRTUAL_ENV
    #     printf "(%s)" (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
    # end

    echo -e "\n>> "
end
