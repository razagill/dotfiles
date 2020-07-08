#!/bin/zsh

echo "=> change default location of screenshots to ~/screenshots"
defaults write com.apple.screencapture location ~/screenshots

echo "=> show path bar breadcrumbs in finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "=> show status bar in finder"
defaults write com.apple.finder ShowStatusBar -bool true
