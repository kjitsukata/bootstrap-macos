# Bootstrap for macOS

## Overview

## Installation

## Included Applications

### Packages (with Homebrew)

- [Python](https://www.python.org/)
  - 3.13
  - 3.14

### Applications (with Homebrew Cask)

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

- [powerline-go](https://github.com/justjanne/powerline-go)
