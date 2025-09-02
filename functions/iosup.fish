function iosup --description "Updates the iOS project."
    if cdios
        if test -f "scripts/update.sh"
            sh scripts/update.sh
        else
            echo "Error: scripts/update.sh not found in the current directory." >&2
            return 1
        end
    end
end
