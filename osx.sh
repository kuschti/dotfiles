## OSX System Settings
fancy_echo "setup osx system settings ..."
# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs) (default: not set).
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Automatically hide and show the Dock (default: false).
defaults write com.apple.dock autohide -bool true

# Disable press-and-hold for keys in favor of key repeat (default: true).
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate (default: 60).
defaults write NSGlobalDomain KeyRepeat -int 1

# Show all filename extensions in Finder (default: false).
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Expand save panel (default: false).
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Disable auto-correct (default: true).
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Avoid creating .DS_Store files on network volumes (default: false).
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Require password 5 seconds after sleep or screen saver begins.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# Enable Safari’s debug menu (default: false).
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Show the ~/Library folder (default: hidden).
chflags nohidden ~/Library

# Disable shadow in screenshots (default: false).
# defaults write com.apple.screencapture disable-shadow -bool true

# Expand print panel (default: false).
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Show remaining battery time, hide percentage.
# defaults write com.apple.menuextra.battery ShowPercent -string "NO"
# defaults write com.apple.menuextra.battery ShowTime -string "YES"

# Always show scrollbars (default: WhenScrolling).
# defaults write NSGlobalDomain AppleShowScrollBars -string "Always"