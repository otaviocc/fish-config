function cdd --description 'Opens Developer directory'
    set -l dev_dir (dev_path)
    if test -d "$dev_dir"
        cd "$dev_dir"
    else
        echo "Error: Developer directory not found at $dev_dir" >&2
        return 1
    end
end
