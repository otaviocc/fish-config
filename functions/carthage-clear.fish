function carthage-clear --description "Clears Carthage cache."
    set -l carthage_cache_path (home_path)/Library/Caches/org.carthage.CarthageKit
    if test -d $carthage_cache_path
        rm -rf $carthage_cache_path
    end

    set -l carthage_cache_path_2 (home_path)/Library/Caches/carthage
    if test -d $carthage_cache_path_2
        rm -rf $carthage_cache_path_2
    end
end 
