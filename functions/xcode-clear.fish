function xcode-clear --description "Clears Xcode's DerivedData and saved state."
    set -l derived_data_path (home_path)/Library/Developer/Xcode/DerivedData
    if test -d $derived_data_path
        echo "Removing DerivedData..."
        rm -rf $derived_data_path
    else
        echo "DerivedData directory not found, skipping."
    end

    set -l saved_state_path (home_path)"/Library/Saved Application State/com.apple.dt.Xcode.savedState"
    if test -d $saved_state_path
        echo "Removing saved application state..."
        rm -rf $saved_state_path
    else
        echo "Saved application state not found, skipping."
    end
end
