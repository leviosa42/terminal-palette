#!/bin/bash
# tokyonight.sh
# colors from: https://github.com/folke/tokyonight.nvim
# see: https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h3-Operating-System-Commands

set -euo pipefail

: "Define functions" && {
  function osc() {
    # Usage:
    #   osc <sequence_number> <text1> <text2> ...
    # Example:
    #   osc 1 'This is title' # == printf "\033]1;This is title\033\\"
    local IFS=';'
    printf "\033]$*\033\\"
    return 0
  }
}

: "Define colors" && {
  readonly BLACK='#15161e'
  readonly RED='#f7768e'
  readonly GREEN='#9ece6a'
  readonly YELLOW='#e0af68'
  readonly BLUE='#7aa2f7'
  readonly PURPLE='#bb9af7'
  readonly CYAN='#7dcfff'
  readonly WHITE='#a9b1d6'
  readonly BRIGHT_BLACK='#414868'
  readonly BRIGHT_RED='#f7768e'
  readonly BRIGHT_GREEN='#9ece6a'
  readonly BRIGHT_YELLOW='#e0af68'
  readonly BRIGHT_BLUE='#7aa2f7'
  readonly BRIGHT_PURPLE='#9d7cd8'
  readonly BRIGHT_CYAN='#7dcfff'
  readonly BRIGHT_WHITE='#c0caf5'
  readonly FOREGROUND='#c0caf5'
  readonly BACKGROUND='#1a1b26'
  readonly CURSOR="${BLUE}"
}

: "Set colors" && {
  osc 4 0 "${BLACK}"
  osc 4 1 "${RED}"
  osc 4 2 "${GREEN}"
  osc 4 3 "${YELLOW}"
  osc 4 4 "${BLUE}"
  osc 4 5 "${PURPLE}"
  osc 4 6 "${CYAN}"
  osc 4 7 "${WHITE}"
  osc 4 8 "${BRIGHT_BLACK}"
  osc 4 9 "${BRIGHT_RED}"
  osc 4 10 "${BRIGHT_GREEN}"
  osc 4 11 "${BRIGHT_YELLOW}"
  osc 4 12 "${BRIGHT_BLUE}"
  osc 4 13 "${BRIGHT_PURPLE}"
  osc 4 14 "${BRIGHT_CYAN}"
  osc 4 15 "${BRIGHT_WHITE}"
  osc 10 "${FOREGROUND}"
  osc 11 "${BACKGROUND}"
  osc 12 "${CURSOR}"
}

