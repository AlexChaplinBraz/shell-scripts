#!/usr/bin/env sh

# Show colourised rustc error message explanation.

ScriptName=${0##*/}
Version=1.0.0
Deps='rustc glow less'

HelpMessage="\033[32m$ScriptName\033[0m $Version
Alexander Chaplin Braz <contact@alexchaplinbraz.com>

Show colourised rustc error message explanation in a pager.

\033[33mUSAGE:\033[0m
    $ScriptName <ERROR_CODE>
    $ScriptName [FLAG]

\033[33mFLAGS:\033[0m
    \033[32m-h\033[0m, \033[32m--help\033[0m       Print help and exit.
    \033[32m-v\033[0m, \033[32m--version\033[0m    Print version and exit.

\033[33mARGS:\033[0m
    \033[32m<ERROR_CODE>\033[0m    Four-digit number after E.

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
    *) ErrorCode=$1 ;;
esac

for dep in $Deps; do ! command -v $dep 1>/dev/null && MissingDeps="$MissingDeps $dep"; done
[ "$MissingDeps" ] && error "missing dependencies:$MissingDeps"

rustc --explain "E$ErrorCode" \
    | awk '/```/&&v++%2{sub(/```/, "PLACEH0LDER")}{print}' \
    | sed 's/```/```rust/;s/PLACEH0LDER/```/' \
    | glow -s dark - \
    | less -r

