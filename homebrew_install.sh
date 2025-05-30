#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if ! grep -q '/opt/homebrew/bin/brew shellenv' $HOME/.zprofile
then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all

formulas=(
    ag
    ansible
    bash-completion
    cask
    cue-lang/tap/cue
    curl
    docker-machine
    gdrive
    git
    gh
    gnu
    golang
    jq
    kubectx
    kubernetes-cli
    markdown
    mise
    mysql-client
    nmap
    openssl
    peco
    sourcegraph/src-cli/src-cli
    sqlite
    terraform
    wget
)

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    caffeine
    coteditor
    docker
#    firefox
    ghostty
    google-chrome
    google-cloud-sdk
    google-japanese-ime
    iterm2
#    slack
    virtualbox
    vagrant
    vagrant-manager
    1password-cli
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew install $cask --cask
done

brew cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END
