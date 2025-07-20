# Bootstrap for macOS

## Overview

## Installation

## Included Applications

### Packages (with Homebrew)

### Applications (with Homebrew Cask)

- [ForkLift](https://binarynights.com/)
- [Raindrop.io](https://raindrop.io/)

### Applications (with mas)

## Configuration

### Change prompt for Zsh (powerline-go)

Add the following to `.zshrc`:  

```bash
function powerline_precmd() {
    PS1="$(/opt/homebrew/bin/powerline-go -error $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ] && [ -f "/opt/homebrew/bin/powerline-go" ]; then
    install_powerline_precmd
fi
```

### Change default file viewer to [ForkLift](https://binarynights.com/)

Execute the following command and then reboot the macOS.

```bash
defaults write -g NSFileViewer -string com.binarynights.ForkLift;
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType="public.folder";LSHandlerRoleAll="com.binarynights.ForkLift";}'
```

Change default file viewer back to Finder.

```bash
defaults delete -g NSFileViewer
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType="public.folder";LSHandlerRoleAll="com.apple.finder";}'
```

- [ForkLift Manual - Default File Viewer](https://binarynights.com/manual#fileviewer)
