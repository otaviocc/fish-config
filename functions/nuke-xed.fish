function nuke-xed -d 'Cleans up dev. environment'
    echo 🚨 Killing Xcode
    killall Xcode 2> /dev/null
    xcrun -k

    echo 🚨 Cleaning derived data
    rm -rf $HOME/Library/Developer/Xcode/DerivedData/ 2> /dev/null

    echo 🚨 Cleaning Xcode cache
    rm -rf $HOME/Library/Caches/com.apple.dt.Xcode/ 2> /dev/null

    echo 🚨 Cleaning CocoaPods cache
    rm -rf $HOME/Library/Caches/CocoaPods 2> /dev/null

    echo 🚨 Cleaning git untracked files
    git clean -fdx 2> /dev/null

    echo ✅ Done
end
