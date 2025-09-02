function iossims-list --description "Lists all available iOS simulators"
    if not command -v jq >/dev/null
        echo "jq is not installed. Please install it to use this function."
        return 1
    end

    echo "NAME|STATE|UDID" | column -t -s '|'
    xcrun simctl list -j devices | jq -r '.devices[] | .[] | select(.isAvailable) | "\(.name)|\(.state)|\(.udid)"' | column -t -s '|'
end
