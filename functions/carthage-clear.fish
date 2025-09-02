function carthage-clear --description "Clears Carthage cache."
    set -l carthage_cache_paths (home_path)/Library/Caches/org.carthage.CarthageKit (home_path)/Library/Caches/carthage
    for path in $carthage_cache_paths
        if test -d $path
            echo "Removing $path"
            rm -rf $path
        end
    end
end 
