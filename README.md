# Zatnas Dot Files

This is my config files that I have on my system right now. Shell configs are from Manjaro default along with my own customization

## System Information

| Info Name   | Software |
| ---         | ---      |
| Init System | systemd  |
| DE          | KDE      |
| Shell       | zsh      |
| Editor      | vim      |

## Features

- Does not need any other dotfile manager.
- Will not clutter your $HOME with unnecessary files and directories
- Provides a simple script to use [lazygit](https://github.com/jesseduffield/lazygit)

### Shell Feature

- Provides auto sudo escalation for:
  - dhclient
  - ntpdate
  - pacman
- Autostart docker if service not yet started

## Installation

Installation of this dotfile is destructive. Do a backup and proceed at your own risk.

```terminal
git clone https://github.com/zethnest/dotfiles
cd dotfiles
./git fetch --all
./git checkout -f config
```
