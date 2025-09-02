function cdios --description "Changes directory to the iOS project."
    set -l ios_project_path (dev_path)"/tr-ios"
    if test -d "$ios_project_path"
        cd "$ios_project_path"
    else
        echo "Error: iOS project directory not found at $ios_project_path" >&2
        return 1
    end
end 
