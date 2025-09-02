function swiftpm-reset --description "Resets SwiftPM caches"
    echo "This will remove the global SwiftPM cache (~/.swiftpm) and the local .swiftpm directory."
    read -P "Are you sure? [y/N] " confirm
    if test "$confirm" = "y" -o "$confirm" = "Y"
        echo "Removing global SwiftPM cache..."
        rm -rf ~/.swiftpm
        echo "Removing local SwiftPM cache..."
        rm -rf ./.swiftpm
        echo "SwiftPM caches have been reset."
    else
        echo "Operation cancelled."
    end
end
