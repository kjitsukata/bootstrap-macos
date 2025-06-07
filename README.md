# Bootstrap for macOS

## Overview

## Installation

## Included Applications / Configuration

### Packages (with Homebrew)

### Applications (with Homebrew Cask)

- [ForkLift](https://binarynights.com/)
- [Raindrop.io](https://raindrop.io/)

#### Change default file viewer to [ForkLift](https://binarynights.com/)

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

### Applications (with mas)

