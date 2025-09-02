function swiftpm-reset --description "Resets SwiftPM caches"
    echo "This will remove the global SwiftPM cache ((home_path)/.swiftpm) and the local .swiftpm directory."
    read -P "Are you sure? [y/N] " confirm
    if test "$confirm" = "y" -o "$confirm" = "Y"
        if test -d "(home_path)/.swiftpm"
            echo "Removing global SwiftPM cache..."
            rm -rf "(home_path)/.swiftpm"
        else
            echo "Global SwiftPM cache not found, skipping."
        end

        if test -d "./.swiftpm"
            echo "Removing local SwiftPM cache..."
            rm -rf "./.swiftpm"
        else
            echo "Local SwiftPM cache not found, skipping."
        end
        echo "SwiftPM caches have been reset."
    else
        echo "Operation cancelled."
    end
end
