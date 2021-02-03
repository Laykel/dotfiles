function fish_mode_prompt --description 'Show shell vim mode'
    switch $fish_bind_mode
        case default
            set_color --bold red
            echo '[N]'
        case insert
            set_color --bold green
            echo '[I]'
        case replace_one
            set_color --bold yellow
            echo '[R]'
        case visual
            set_color --bold brmagenta
            echo '[V]'
        case '*'
            set_color --bold red
            echo '?'
    end
    set_color normal
    echo ' '
end
