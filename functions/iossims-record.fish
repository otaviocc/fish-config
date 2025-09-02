function iossims-record --description "Records the screen of a booted iOS simulator"
    if not command -v fzf >/dev/null
        echo "fzf is not installed. Please install it to use this function."
        return 1
    end

    if not command -v jq >/dev/null
        echo "jq is not installed. Please install it to use this function."
        return 1
    end

    set -l booted_sims (xcrun simctl list -j devices | jq -r '.devices[] | .[] | select(.isAvailable and .state == "Booted") | "\(.name) \(.udid)"')

    if test -z "$booted_sims"
        echo "No booted simulators found."
        return 1
    end

    set -l sim_count (echo "$booted_sims" | wc -l | string trim)

    set -l udid ""
    if test "$sim_count" -eq 1
        set udid (echo "$booted_sims" | awk '{print $NF}')
    else
        set -l selection (echo "$booted_sims" | fzf --prompt="Select a simulator to record: ")
        if test -n "$selection"
            set udid (echo "$selection" | awk '{print $NF}')
        else
            echo "No simulator selected."
            return 1
        end
    end

    set -l filename "$HOME/Desktop/sim_record_(date +%Y%m%d_%H%M%S).mp4"
    echo "Starting recording for simulator with UDID: $udid"
    echo "Saving to: $filename"
    echo "Press Ctrl-C to stop recording."

    xcrun simctl io $udid recordVideo $filename
end
