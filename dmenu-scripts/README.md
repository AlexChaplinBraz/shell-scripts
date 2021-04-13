# Dmenu scripts

**NOTE:** These scripts will eventually be rewritten following my new standard.

These are all the scripts I use where I implement dmenu in some way. I really
love how flexible dmenu is, and I've made it a goal to make as many useful ones
as possible.

Keep in mind that some scripts use 'sudo' to run some commands,
which would require you to have it setup in a way that lets you run sudo
without a password, or to have a pop-up window to ask for it. Another thing
of note is that I run most of these with a hotkey (sxhkd) that opens a new
terminal with that script like this: `$TERMINAL -e dscript`

The scripts that contain an MIT License block inside them are what I could
consider "complete", which doesn't mean they won't be improved, just that
they became so big that I wanted to slap my name on them. It also means
that you don't have to fiddle with the code inside to interact with them.
They are scripts with options and full explanations. The other scripts
may or may not be written in a way that only applies to my setup, but you
can always edit them to fit your needs.

## Introduction

Here's a brief introduction to each one in order of importance. More information
can usually be found by passing them '--help' or by reading it from the script.

### dman

This single line script is the absolute most useful thing I've ever written.
It lets you search through all the man pages' names and short descriptions,
and open them. It's great for finding different versions of the same manual.
I go more in-depth on it in the comments of the script.

### dpass

Copy, add, edit and delete pass entries through a series of dmenu prompts.
It requires [genrepass](https://github.com/AlexChaplinBraz/genrepass-cli)
to generate passwords and an already
initiated password store. Git support is planned.

### dmarks

A simple plain text URL bookmark manager. Copy, add, edit and delete bookmark
entries through a series of dmenu prompts (I like this type of interaction).
Based on dbuku but is even better. It can also get the URL and title of the
active window if it is one of: qutebrowser, Chrome, Brave or Chromium,
but it also gives you the ability to edit or delete a bookmark.

### dtimer

A simple timer that prompts you for the time (in `sleep` format) to wait to
display a TIME'S UP dmenu "listing" with the name you gave it. Can take one
single argument pointing to a WAV file for a sound alert. I use it for quickly
starting a short timer whenever I put something on the stove. I've burned a few
meals and pans before this script...

### dpower

A power menu with confirmation prompts using dprompt. This way I only need to
bind one key for power options. It doesn't matter that it adds one more step,
since these aren't engaged that often.

### dbrowsel

Select a browser to open a URL with. Can be exported to $BROWSER and be used
with dmarks for more control over what browser and profile to open.
This script holds my personal browsers and profiles, so you'll have to
modify it for it to be useful for you. Can also just be used to launch browsers.

### ddiropen

Select a subdirectory (or the parent) from a specified parent directory and open
a program selected from a list of programs in that directory. Convoluted
description. Read '--help'. Can also take a file that contains bookmarks of
the parent directories you wish to start finding subdirectories from.

### dlocate

Same principle as ddiropen but using locate. Instead of using a bookmark file
or giving it a directory, it asks you what to search for and you select one of
the results.

It has the advantage of being able to open files as well as
directories, it's relatively faster and can give you results from all around
your system.

The disadvantages are that you need to keep the database updating frequently
for this script to be useful (even then, files you created recently won't
appear until the update) and the results can feel random at times if you
search for something that appears in many places.

### dbuku

Open a buku bookmark with your $BROWSER or create a buku bookmark with a
series of interactive dmenu prompts. It has support for getting the URL
and title of the active window if it is one of: qutebrowser, Chrome, Brave
or Chromium (though I haven't tested Chromium because I don't have it).

It works fine, but I dislike buku's way of operating so I created my own
plain text bookmarking system with dmenu for managing them.
No more development is planned for it since I switched to dmarks.

### demoji

Dmenu for copying an emoji. Practically stolen from Luke Smith. Requires
some sort of emoji fonts. I use Symbola and FontAwesome.

### dmnt

Dmenu for mounting and unmounting partitions. Also mostly from Luke Smith.
Could use some improvements but it's completely functional as is.

### dprompt

Dmenu binary prompt. Used to choose Yes or No and run a command on Yes.
Pure Luke Smith ripoff.

### dyt

Quickly search with youtube-viewer.

### dwine

Choose which wine bottle to open a program with. Mostly used in my own
xdg-open script for .exe files.

### dkeys

Dmenu for enabling and disabling keys. Currently works for Super_L and Super_R.
And will probably not work for other keyboards. I just needed a way to disable
the super keys quickly. Might make it more general-purpose later.

## Legal

MIT License.

## Thanks

To [Luke Smith](https://lukesmith.xyz/) for the inspiration for some of the
scripts and for getting me to start using Arch Linux non-ironically
as a daily driver.
