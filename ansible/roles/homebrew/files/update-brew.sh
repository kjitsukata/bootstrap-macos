#!/bin/sh

brew update
echo "The following formula will be updated..."
brew outdated
echo "Do you want to update all formula? [Y/n]: "
read ANS

case $ANS in
  "" | [Yy]* )
    brew update && brew upgrade && brew cleanup && brew autoremove
    ;;
  * )
    exit 0
    ;; 
esac

