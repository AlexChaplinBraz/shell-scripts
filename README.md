# Shell scripts

These shell scripts are written to be as POSIX compliant as possible, and as such, POSIX dependencies are assumed to
exist on the system. Otherwise, each script checks by itself if its dependencies are accessible and informs the user if
they are not.

The help and error messages are colourised with ANSI codes (SRG), and if a program requires to be run as root it will be
informed to the user. Configuration is handled through environment variables and somethimes config files.

### newsh

Creates an executable script linked to local bin from a template with lots of useful features and opens it with your
EDITOR. This template is used to set a standard of how my scripts should look and behave.

### trackconf

Great way to manage a dotfiles repository. Makes use of `ranger`'s file selection feature to add config files to the
dotfiles repository, symlinking them back to where they belonged. Also allows for deploying configs by essentially
doing the opposite and symlinking the selected configs from inside the dotfiles repo to where they would belong,
creating any missing directories.

### rbackup

A fairly great backup solution that allows one to configure multiple `rsync` transfers that run in series. Has support
for dated versioning and an exclusions file for each backup. Also handles remote servers by checking connectivity before
syncing. If unavailable, it's skipped and the next backup starts. Same for errors with the configuration. Additionally,
supports logging the output of the script.

### linkto

Easy way to symlink selected files with `ranger` into the specified directory. Mainly used to link scripts into local
bin.

### quickedit

Quickly find and open files to edit. By default uses `fzf` for displaying found files, but can alternatively use
`dmenu`.

### saveinstalled

Save lists of explicitly installed official and AUR pacman packages. Can also save a custom list based on the
directories inside the specified directory. Useful for packages that have been installed from source.

### lndirex

Symlink all the executable files inside one directory into another one, replacing any existing links. Precursor to
`linkto`, but still somewhat useful.

### upmir

Update pacman's mirrorlist, ranked by speed. Must be run as root.

### rex

Show colourised rustc error message explanation in a pager.

### ex

General extraction helper.

### fixwinperms

Windows is crap and so is the way permissions get set when transferring from it. This script fixes permissions
recursively on files and directories by setting them to 644 and 775 respectively. This is important because you
shouldn't have files with 777 permissions all over the place.

CAUTION: careful where you run it, since you could screw your system up royally. Not unfixable, but really troublesome.

### checkvdur

Check total duration of all videos of the same extension inside the current directory.

## Legal

MIT License.

