function brew-magic -d 'Invokes brew maintenance'
    echo 🚨 Updating Brew
    brew update

    echo 🚨 Upgrading Brew
    brew upgrade --verbose

    echo 🚨 Upgrading Casks
    brew upgrade --cask --greedy --verbose

    echo 🚨 Cleaning up old stuff
    brew cleanup --verbose

    echo ✅ Done
end