function mkdir-cd --description "Creates a directory and changes into it."
    mkdir -p -- $argv; and cd -- $argv[1]
end
