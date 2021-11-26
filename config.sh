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

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all	# fuzzy finder


# ======== Configurations ========
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