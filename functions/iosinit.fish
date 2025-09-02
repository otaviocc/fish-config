function iosinit --description "Initializes the iOS project."
    if cdios
        if test -f "scripts/init.sh"
            sh scripts/init.sh
        else
            echo "Error: scripts/init.sh not found in the current directory." >&2
            return 1
        end
    end
end
