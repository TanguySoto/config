#!/bin/bash

# ======== Init script ========
trap 'inform_user_error' ERR

function inform_user_error {
    RED='\033[1;31m'
    NC='\033[0m' # No Color

    echo -e "${RED}/!\ An error occured during the configuration${NC}"
    exit -1
}

time_stamp="$(date +"%Y-%m-%d_%H-%M-%S")"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# ======== Installations ========
sudo apt-get update
sudo apt-get install tmux				# terminal multiplexer
sudo apt-get install silversearcher-ag	# pattern matcher

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all	# fuzzy finder


# ======== Configurations ========
bash "$DIR/Terminal/terminal_profiles.sh"  # gnome terminal profiles

# Sublime user config, if installed
SUBLIME_USER_CONFIG_PATH=~/.config/sublime-text-3/Packages
if [ -d "$SUBLIME_USER_CONFIG_PATH/User" ]; then
  rm -rf "$SUBLIME_USER_CONFIG_PATH/User"
  cp -R "$DIR/Sublime/User" $SUBLIME_USER_CONFIG_PATH
fi

# Aliases
ALIAS_PATH=~/.bash_aliases
if [ -f $ALIAS_PATH ]; then
    cp $ALIAS_PATH "$DIR/bash_aliases.backup-$time_stamp"
fi
grep -q -x -F 'alias s="git status"' $ALIAS_PATH || echo 'alias s="git status"' >> $ALIAS_PATH

# Tmux
git clone --depth 1 https://github.com/gpakosz/.tmux.git ~/.tmux && ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf && cp $DIR/.tmux.conf.local ~/

# Bash prompt
BASHRC_PATH=~/.bashrc
cp $BASHRC_PATH "$DIR/bashrc.backup-$time_stamp"
cat "$DIR/bashrc_append.txt" >> $BASHRC_PATH