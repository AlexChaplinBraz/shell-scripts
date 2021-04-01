# Pseudo aliases

These are scripts that I use to set some default options for programs.
I'm doing it this way because shell aliases can't be called from `sxhkd`.

This is achieved by having my local bin first in my PATH. But for it to not
enter an infinite loop you have to restore the normal path from within the
pseudo alias. I use it mostly for setting configuration files to be elsewhere
when the program doesn't use an environment variable for that.

## Legal

MIT License.

