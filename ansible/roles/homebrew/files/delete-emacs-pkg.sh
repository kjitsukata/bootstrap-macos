#!/bin/sh

echo "Delete All Emacs"
brew uninstall --ignore-dependencies emacs > /dev/null 2>&1
brew uninstall emacs-mac > /dev/null 2>&1
brew uninstall emacs-mac-spacemacs-icon > /dev/null 2>&1
brew uninstall emacs-plus > /dev/null 2>&1
brew uninstall --cask emacs > /dev/null 2>&1

echo "Delete brew tap for Emacs"
brew untap railwaycat/emacsmacport > /dev/null 2>&1
brew untap d12frosted/emacs-plus > /dev/null 2>&1
