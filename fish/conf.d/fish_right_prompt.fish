

function fish_right_prompt -d "Right side prompt message"

    # A dark grey
    set --local dark_grey 555

    set_color $dark_grey

    echo -en (date +%H:%M:%S)

    set_color normal
end


function show_virtualenv_name -d "Display the name of the current virtualenv"
    if set -q VIRTUAL_ENV
        echo -en "["(basename "$VIRTUAL_ENV")"] "
    end
end
