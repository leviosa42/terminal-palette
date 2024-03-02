#!/bin/bash
# monokai.sh

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
  readonly BLACK='#1b1d1e'
  readonly RED='#f92672'
  readonly GREEN='#82b414'
  readonly YELLOW='#fd971f'
  readonly BLUE='#465457'
  readonly PURPLE='#8c54fe'
  readonly CYAN='#56c2df'
  readonly WHITE='#ccccc6'
  readonly BRIGHT_BLACK='#505354'
  readonly BRIGHT_RED='#ff5994'
  readonly BRIGHT_GREEN='#b6e354'
  readonly BRIGHT_YELLOW='#feed6c'
  readonly BRIGHT_BLUE='#899ca1'
  readonly BRIGHT_PURPLE='#9e6ffe'
  readonly BRIGHT_CYAN='#8cedff'
  readonly BRIGHT_WHITE='#f8f8f2'
  readonly FOREGROUND="${BRIGHT_WHITE}"
  readonly BACKGROUND='#272822'
  readonly CURSOR="${WHITE}"
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

