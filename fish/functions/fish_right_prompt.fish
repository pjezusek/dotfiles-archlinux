function fish_right_prompt -d "Right side prompt message"
    # A dark grey
    set --local dark_grey 555

    set_color $dark_grey

    show_ruby_version
    show_python_version
    show_node_version
    echo -en (date +%H:%M:%S)

    set_color normal
end

function show_ruby_version -d "Display ruby version and gemset using rvm"
    if type -q rvm-prompt
      echo -en "["(rvm-prompt)"] "
    end
end

function show_python_version -d "Display python version using pyenv"
    if type -q pyenv
      echo -en "[python-"(pyenv version-name)"] "
    end
end

function show_node_version -d "Display node version"
    if type -q node
      echo -en "[node-"(node -v)"] "
    end
end
