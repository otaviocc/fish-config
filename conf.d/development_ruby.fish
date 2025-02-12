if which rbenv > /dev/null
    if status --is-interactive
        rbenv init - fish | source
    end
end