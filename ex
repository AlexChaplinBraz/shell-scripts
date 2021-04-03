#!/usr/bin/env sh

# General extraction helper.

ScriptName=${0##*/}
Version=1.0.0
Deps='tar bunzip2 unrar gunzip unzip uncompress 7z'

HelpMessage="\033[32m$ScriptName\033[0m $Version
Alexander Chaplin Braz <contact@alexchaplinbraz.com>

General extraction helper.

\033[33mUSAGE:\033[0m
    $ScriptName <PATH>
    $ScriptName [FLAG]

\033[33mFLAGS:\033[0m
    \033[32m-h\033[0m, \033[32m--help\033[0m       Print help and exit.
    \033[32m-v\033[0m, \033[32m--version\033[0m    Print version and exit.

\033[33mARGS:\033[0m
    \033[32m<PATH>\033[0m    Path to archive.

\033[33mDEPENDENCIES:\033[0m
    $Deps
"

error() {
    printf "\033[1;31m${2:-ERROR}\033[0m: %s.\nTry '%s --help' for more information.\n" \
        "$1" "$ScriptName" 1>&2
    exit 1
}

case $1 in
    -h|--help|'') printf '%b' "$HelpMessage"; exit 0 ;;
    -v|--version) printf '%s\n' "$Version"; exit 0 ;;
    *) Archive=$1 ;;
esac

for dep in $Deps; do ! command -v $dep 1>/dev/null && MissingDeps="$MissingDeps $dep"; done
[ "$MissingDeps" ] && error "missing dependencies:$MissingDeps"

[ ! -f "$Archive" ] && error "'$Archive' is not a valid file"

case $Archive in
    *.tar.bz2) tar xjf "$Archive" ;;
    *.tar.gz) tar xzf "$Archive" ;;
    *.bz2) bunzip2 "$Archive" ;;
    *.rar) unrar x "$Archive" ;;
    *.gz) gunzip "$Archive" ;;
    *.tar) tar xf "$Archive" ;;
    *.tbz2) tar xjf "$Archive" ;;
    *.tgz) tar xzf "$Archive" ;;
    *.zip) unzip "$Archive" ;;
    *.Z) uncompress "$Archive" ;;
    *.7z) 7z x "$Archive" ;;
    *) error "'$Archive' cannot be exctracted via $ScriptName" ;;
esac

