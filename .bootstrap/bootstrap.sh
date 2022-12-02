TAPS=(
    homebrew/cask-fonts
)

UTILS=(
    bat
    bottom
    colima
    delta
    docker
    docker-compose
    fd
    gdu
    git
    jq
    k9s
    kubernetes-cli
    lazygit
    nvim
    nvm
    ripgrep
    starship
    tmux
    vim
)

FONTS=(
    font-fira-code-nerd-font
)

CASKS=(
    1password
    figma
    firefox
    google-chrome
    gpg-suite
    intellij-idea
    meetingbar
    mimestream
    slack
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

echo "Configuring docker compose command"
mkdir -p ~/.docker/cli-plugins
ln -sfn /usr/local/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
