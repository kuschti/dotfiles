if ! command -v brew >/dev/null; then
  fancy_echo "Installing Homebrew ..."
    curl -fsS \
      'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
fi

if brew list | grep -Fq brew-cask; then
  fancy_echo "Uninstalling old Homebrew-Cask ..."
  brew uninstall --force brew-cask
fi

fancy_echo "Updating Homebrew formulae ..."
brew update --force # https://github.com/Homebrew/brew/issues/1151
brew bundle --file=- <<EOF
tap "thoughtbot/formulae"
tap "homebrew/services"
tap "homebrew/cask-drivers"
tap "homebrew/cask-versions"

# Unix
brew "git"
brew "openssl"
brew "rcm"
brew "zsh"
brew "zsh-completions"

brew "htop"
brew "ssh-copy-id"
brew "v8"
brew "wget"

# GitHub
brew "hub"

# Image manipulation
brew "imagemagick"

# Programming language prerequisites and package managers
brew "yarn"

# MAS Installer
brew "mas"
EOF

apps=(
  adobe-creative-cloud
  alfred
  # appcleaner
  # atom
  bartender
  brave-browser
  carbon-copy-cloner
  clean-me
  # coconutbattery
  daisydisk
  docker
  # dropbox
  # evernote
  figma
  firefox
  firefox-developer-edition
  fork
  # github
  google-backup-and-sync
  google-chrome
  hazel
  hyper
  iterm2
  # imageoptim
  itsycal
  logitech-options
  # mamp
  microsoft-edge-beta
  # onedrive
  rocket
  # sketch
  # sketch-toolbox
  skype
  skype-for-business
  # skyfonts
  slack
  sourcetree
  # sonos
  # spectacle
  spotify
  sublime-text
  synology-drive
  # teamviewer
  the-unarchiver
  theine
  transmit
  transmission
  # vagrant
  # vagrant-manager
  virtualbox
  visual-studio-code
  vlc
  webstorm
  whatsapp
  youtube-dl
)

fancy_echo "Installing apps"
for pkg in "${apps[@]}"
do
  brew cask install $pkg
done

# Cleanup
fancy_echo "Cleaning up old Homebrew formulae ..."
brew cleanup
