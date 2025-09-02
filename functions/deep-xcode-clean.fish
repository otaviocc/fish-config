function deep-xcode-clean --description "Deep cleans Xcode caches"
    echo "This will perform a deep clean of Xcode, removing derived data, module caches, and other temporary files."
    read -P "Are you sure? [y/N] " confirm
    if test "$confirm" = "y" -o "$confirm" = "Y"
        set -l paths_to_remove (home_path)/Library/Developer/Xcode/DerivedData (home_path)/Library/Developer/Xcode/ModuleCache.noindex (home_path)/Library/Caches/org.swift.swiftpm (home_path)/Library/org.swift.swiftpm (home_path)/Library/Saved\ Application\ State/com.apple.dt.Xcode.savedState

        for path in $paths_to_remove
            if test -e "$path"
                echo "Removing $path..."
                rm -rf "$path"
            else
                echo "Path not found, skipping: $path"
            end
        end

        echo "Xcode deep clean complete."
    else
        echo "Operation cancelled."
    end
end
