# Minor scripts

These are short scripts that help do something specific. Take a look,
download them and edit them to suit your needs if needed.

Keep in mind that some scripts use 'sudo' to run some commands,
which would require you to have it set-up in a way that lets you run sudo
without a password, or to have a pop-up window to ask for it.

## Scripts of note

Some highlights that I consider useful by themselves.

### exdirln

Link all executables inside one directory into another. I use this all the time
to re-link the scripts into my local bin directory. In fact there are options
for that. Read '--help' for more information.

### fixwintrans

Windows is crap and so is the way permissions get set when transferring from it.
Run this script from the current directory to fix all file and directory
permissions recursively. This is important because you shouldn't have files
with 777 permissions all over the place.

CAUTION: be careful where you run it, since you could screw your system up
royally. Not unfixable, but really troublesome.

## "Aliases"

These are scripts that I use to set some default options for programs.
I'm doing it this way because shell aliases can't be called from sxhkd.

This is achieved by having my local bin first in my $PATH. But for it to not
enter an infinite loop you have to restore the normal path from within the
"alias". I use it mostly for setting configuration files to be elsewhere
when the program doesn't use an environment variable for that. I also have
my own version of xdg-open, which I find easier to configure.

By the way, is there an official name for this technique? I'm calling it
"alias" because that's what it basically is, but I feel like there's a proper
name for it. Contact me if you know.

## Legal

MIT License.
