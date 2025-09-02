function rmf --description 'Invokes rm -rf'
    echo "About to 'rm -rf' the following:"
    for path in $argv
        echo "  - $path"
    end

    read -P "Are you sure? [y/N] " confirm

    if test "$confirm" = "y" -o "$confirm" = "Y"
        command rm -rf $argv
    else
        echo "Operation cancelled."
    end
end
