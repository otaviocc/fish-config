function deep-xcode-clean --description "Deep cleans Xcode caches"
    echo "This will perform a deep clean of Xcode, removing derived data, module caches, and other temporary files."
    read -P "Are you sure? [y/N] " confirm
    if test "$confirm" = "y" -o "$confirm" = "Y"
        echo "Removing DerivedData..."
        rm -rf ~/Library/Developer/Xcode/DerivedData

        echo "Removing ModuleCache..."
        rm -rf ~/Library/Developer/Xcode/ModuleCache.noindex

        echo "Removing SwiftPM caches..."
        rm -rf ~/Library/Caches/org.swift.swiftpm
        rm -rf ~/Library/org.swift.swiftpm

        echo "Removing saved application state..."
        rm -rf ~/Library/Saved\ Application\ State/com.apple.dt.Xcode.savedState

        echo "Xcode deep clean complete."
    else
        echo "Operation cancelled."
    end
end
