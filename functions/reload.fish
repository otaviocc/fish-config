function reload
    read -P "Are you sure you want to reload the shell? (y/n) " confirm
    if test "$confirm" = "y"
        exec fish
    end
end