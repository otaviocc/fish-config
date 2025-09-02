function iossims-menu --description "Interactive menu to boot or shut down an iOS simulator"
    if not command -v fzf >/dev/null
        echo "fzf is not installed. Please install it to use this function."
        return 1
    end

    if not command -v jq >/dev/null
        echo "jq is not installed. Please install it to use this function."
        return 1
    end

    set -l selection (xcrun simctl list -j devices | jq -r '.devices[] | .[] | select(.isAvailable) | "\(.name) (\(.state)) \(.udid)"' | fzf)

    if test -n "$selection"
        set -l udid (echo $selection | string match -r --groups-only '([A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12})')
        set -l state (echo $selection | string match -r --groups-only '\((Booted|Shutdown)\)')

        if test "$state" = "Booted"
            echo "Shutting down simulator with UDID: $udid"
            xcrun simctl shutdown $udid
        else
            echo "Booting simulator with UDID: $udid"
            xcrun simctl boot $udid
        end
    else
        echo "No simulator selected."
    end
end
