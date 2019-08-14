## OSX System Settings
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# https://www.defaults-write.com/tag/dark-mode/

fancy_echo "setup osx system settings ..."

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 36

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool false

# System Preferences > Dock > Minimize windows using: Scale effect
defaults write com.apple.dock mineffect -string "scale"

# System Preferences > Dock > Minimize windows into application icon
#defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Automatically hide and show the Dock (duration)
#defaults write com.apple.dock autohide-time-modifier -float 0.5

# System Preferences > Dock > Automatically hide and show the Dock (delay)
#defaults write com.apple.dock autohide-delay -float 0

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Disable press-and-hold for keys in favor of key repeat (default: true).
defaults write -g ApplePressAndHoldEnabled -bool false

# System Preferences > Keyboard >
# Set a blazingly fast keyboard repeat rate (default: 60).
defaults write NSGlobalDomain KeyRepeat -int 1

# System Preferences > Keyboard >
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs) (default: not set).
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Trackpad > Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Completely Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop         -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop     -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop     -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Finder > Preferences > Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > Preferences > Show wraning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder > View > As List
# Preferred view style
# Icon View   : `icnv`
# List View   : `Nlsv`
# Column View : `clmv`
# Cover Flow  : `Flwv`
# After configuring preferred view style, clear all `.DS_Store` files
# to ensure settings are applied for every directory
# sudo find / -name ".DS_Store" --delete
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder When performing a search: [Search the Current Folder]
defaults write com.apple.finder FXDefaultSearchScope 'SCcf'

# New window target
# Computer     : `PfCm`
# Volume       : `PfVo`
# $HOME        : `PfHm`
# Desktop      : `PfDe`
# Documents    : `PfDo`
# All My Files : `PfAF`
# Other…       : `PfLo`
defaults write com.apple.finder NewWindowTarget -string 'PfHm'
#defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Show the ~/Library folder (default: hidden).
chflags nohidden ~/Library

# Expand save panel (default: false).
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Avoid creating .DS_Store files on network volumes (default: false).
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Security > Require password 5 seconds after sleep or screen saver begins.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Enable Safari’s debug menu (default: false).
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Disable auto-correct (default: true).
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false


# Disable shadow in screenshots (default: false).
# defaults write com.apple.screencapture disable-shadow -bool true

# Expand print panel (default: false).
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Show remaining battery time, hide percentage.
# defaults write com.apple.menuextra.battery ShowPercent -string "NO"
# defaults write com.apple.menuextra.battery ShowTime -string "YES"

# Always show scrollbars (default: WhenScrolling).
# defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

# Done
fancy_echo "Done. Note that some of these changes require a logout/restart to take effect."