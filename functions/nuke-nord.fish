function nuke-nord -d 'Removes NordVPN files for development'
    echo 🚨 Removing NordVPN \(AppStore\)
    defaults delete com.nordvpn.NordVPN 2> /dev/null
    rmf (home_path)/Library/Containers/com.nordvpn.NordVPN 2> /dev/null

    echo 🚨 Removing NordVPN \(Sideload\)
    defaults delete com.nordvpn.macos 2> /dev/null
    rmf (home_path)/Library/Application\ Support/com.nordvpn.macos 2> /dev/null

    echo ✅ Done
end
