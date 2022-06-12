TAPS=(
    homebrew/cask-fonts
)

UTILS=(
    git
    jq
    k9s
    kubernetes-cli
    starship
    vim
)

FONTS=(
    font-fira-code-nerd-font
)

CASKS=(
    1password
    docker
    figma
    firefox
    google-chrome
    gpg-suite
    intellij-idea
    meetingbar
    mimestream
    slack
    spotify
    spotmenu
    visual-studio-code
    vivaldi
    whatsapp
    zoom
)

echo "Configuring macOS preferences"
zsh macos.sh

WORKDIR=$HOME

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

echo "Installing software from Homebrew"
brew tap $TAPS
brew install $UTILS
brew install $FONTS
brew install --cask $CASKS
