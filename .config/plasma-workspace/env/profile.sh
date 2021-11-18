#!/bin/sh

export EDITOR="vim"

# XDG
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# Vim
export VIMDIR="$XDG_CONFIG_HOME/vim"
export MYVIMRC="$VIMDIR/vimrc"
export VIMINIT="source $MYVIMRC"

# Android / ADB
export ADB_VENDOR_KEYS="$XDG_CONFIG_HOME/android"
export ANDROID_AVD_HOME="$XDG_DATA_HOME/android/"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android/"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"

# Less
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"

# NPM
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_HOME="$XDG_DATA_HOME/npm"
export NPM_CACHE="$XDG_CACHE_HOME/npm"
export NPM_TMP="$XDG_RUNTIME_DIR/npm"
export NPM_INIT_MODULE="$XDG_CONFIG_HOME/npm/config/npm-init.js"

# Config files
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GTK2_RC_FILES="/etc/gtk-2.0/gtkrc:$XDG_CONFIG_HOME/gtkrc-2.0"
export GTK_RC_FILES="/etc/gtk/gtkrc:$XDG_CONFIG_HOME/gtkrc"
export KDEHOME="$XDG_CONFIG_HOME/kde"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export TASKDATA="$XDG_DATA_HOME/task"
export TASKRC="$XDG_CONFIG_HOME/task/taskrc"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Data files
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

export _JAVA_OPTIONS=""
export _JAVA_OPTIONS="$_JAVA_OPTIONS -Dawt.useSystemAAFontSettings=on"
export _JAVA_OPTIONS="$_JAVA_OPTIONS -Dswing.aatext=true"
export _JAVA_OPTIONS="$_JAVA_OPTIONS -Dsun.java2d.opengl=true"
export _JAVA_OPTIONS="$_JAVA_OPTIONS -Djava.util.prefs.userRoot=$\"XDG_CONFIG_HOME\"/java"

export PATH="$GOPATH/bin:$PATH"
export PATH="$NPM_HOME/bin:$PATH"
export PATH="$CARGO_HOME/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
