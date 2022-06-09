TAPS=(
    homebrew/cask-fonts
)

UTILS=(
    curl
    git
    jq
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
    firefox
    google-chrome
    gpg-suite
    intellij-idea
    mimestream
    slack
    spotify
    visual-studio-code
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
