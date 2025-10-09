#!/usr/bin/env bash

set -e

APP="adwcolors"
REPO="https://github.com/yioannides/adwcolors"
INSTALL_DIR="$HOME/.{$APP}"

echo -e "\nInstalling \033[1m${APP}\033[22m..."
sleep 1.5

# Determine the shell rc file
if [[ $SHELL == */zsh ]]; then
  SHELL_RC="$HOME/.zshrc"
elif [[ $SHELL == */bash ]]; then
  SHELL_RC="$HOME/.bashrc"
else
  SHELL_RC="$HOME/.profile"
fi

if [ -d "$INSTALL_DIR" ]; then
	cd $INSTALL_DIR
	git pull
else
	git clone "$REPO" "$INSTALL_DIR"
	
# create alias
ALIAS_CMD="alias {$APP}='{$INSTALL_DIR}/{$APP}.sh'"

if ! -Fxq "$ALIAS_CMD" "$SHELL_RC" 2>/dev/null; then
	echo "$ALIAS_CMD" >> "$SHELL_RC"
fi
