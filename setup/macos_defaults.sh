#!/bin/zsh

echo "=> change default location of screenshots to ~/screenshots"
defaults write com.apple.screencapture location ~/screenshots

echo "=> show path bar breadcrumbs in finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "=> show status bar in finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "=> Always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

echo "=> Save to disk (not to iCloud) by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

echo "=> Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
