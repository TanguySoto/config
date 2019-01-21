#!/usr/bin/env bash

# Source code from: https://github.com/Mayccoll/Gogh/

# ==================== Monokai-Dark =============================== #
export COLOR_01="#75715e"           # HOST
export COLOR_02="#f92672"           # SYNTAX_STRING
export COLOR_03="#a6e22e"           # COMMAND
export COLOR_04="#f4bf75"           # COMMAND_COLOR2
export COLOR_05="#66d9ef"           # PATH
export COLOR_06="#ae81ff"           # SYNTAX_VAR
export COLOR_07="#2AA198"           # PROMP
export COLOR_08="#f9f8f5"           #

export COLOR_09="#272822"           #
export COLOR_10="#f92672"           # COMMAND_ERROR
export COLOR_11="#a6e22e"           # EXEC
export COLOR_12="#f4bf75"           #
export COLOR_13="#66d9ef"           # FOLDER
export COLOR_14="#ae81ff"           #
export COLOR_15="#2AA198"           #
export COLOR_16="#f8f8f2"           #

export BACKGROUND_COLOR="#272822"   # Background Color
export FOREGROUND_COLOR="#f8f8f2"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Monokai Dark"
# =============================================================== #

# =============================================================== #
# | Apply Colors
# ===============================================================|#
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
bash "$DIR/apply-color.sh"


# ==================== Matrix =============================== #
export COLOR_01="##243342"           # Black
export COLOR_02="##C54133"           # Red
export COLOR_03="##27AE60"           # Green
export COLOR_04="##EDB20A"           # Yellow
export COLOR_05="##2479D0"           # Blue
export COLOR_06="##7D3EA0"           # Magenta
export COLOR_07="##1D8579"           # Cyan
export COLOR_08="##C9CCCD"           # Light gray

export COLOR_09="##34495E"           # Dark gray
export COLOR_10="##E74C3C"           # Light Red
export COLOR_11="##2ECC71"           # Light Green
export COLOR_12="##F1C40F"           # Light Yellow
export COLOR_13="##3498DB"           # Light Blue
export COLOR_14="##9B59B6"           # Light Magenta
export COLOR_15="##2AA198"           # Light Cyan
export COLOR_16="##ECF0F1"           # White

export BACKGROUND_COLOR="#121212"   # Background Color
export FOREGROUND_COLOR="#0EE10E"   # Foreground Color (text)
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor color
export PROFILE_NAME="matrix"
# =============================================================== #

# =============================================================== #
# | Apply Colors
# ===============================================================|#
bash "$DIR/apply-color.sh"