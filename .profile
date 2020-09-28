#!/bin/sh

export EDITOR="vim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"
export VIMINIT="source $MYVIMRC"

export ADB_VENDOR_KEYS="$XDG_CONFIG_HOME/android"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"

export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GTK2_RC_FILES="/etc/gtk-2.0/gtkrc:$XDG_CONFIG_HOME/gtkrc-2.0"
export GTK_RC_FILES="/etc/gtk/gtkrc:$XDG_CONFIG_HOME/gtkrc"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export ANDROID_AVD_HOME="$XDG_DATA_HOME/android/"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android/"
export GOPATH="$XDG_DATA_HOME/go"
