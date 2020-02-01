# Readable Password Generator

Extracts words in order from a selected file and inserts special characters
at random places to **gen**erate a **re**adable **pass**word.

Written based on a Computerphile video:
[How to Choose a Password](https://youtu.be/3NjQ9b3pgIg)

The point of this script is to replace the standard password generation
that is very hard to input manually, with a still very secure,
but much easier to write password, for the rare occasion where you have
to input it manualy, like on a smartphone you're not syncing them to.

I wrote this for generating passwords in another one of my scripts called dpass,
which gives an easy way to copy, create, edit and delete pass entries.

## Dependencies

Standard POSIX compliant utilities that should be in every system (though I
haven't personally tried the script in anything other than Arch Linux).

**And** `shuf`. Couldn't find a better alternative. If there's a POSIX compliant
utility that does the same thing, please do tell me and I'll try to rewrite it.
Do first look at the way I'm using it, though, since I know some POSIX
compliant tools can do that, but I couldn't get variables to work with them.

## Installation

Just download genrepass, put it in your $PATH, and make it executable.

## Usage

`genrepass [opts] {-f <path> | --file <path> | -s | --use-source} [opts]`

## Examples

Use the script's own source code, capitalize every word and copy to clipboard:

`genrepass -sCc`

Use the file "Journal-2020.md", translate all accented characters, capitalize
every word and copy to clipboard:

`genrepass -tCcf "$HOME/Documents/Journal-2020.md"`

Use the script's own source code, containing 10 special characters and
with a length between 30 and 50 characters:

`genrepass -s --min-pass-len 30 --max-pass-len 50 --spechars-amount 10`

## Options

Display help message and exit.

`-h | --help`

Display version and exit.

`-v | --version`

Display variable values and output the password at each step of the process,
plus extras.

`-d | --debug`

Use this script's own source code as file. Provided to easily check how the
script works with the '--debug' option, but shouldn't really be used
for your real passwords.

`-s | --use-source`

Specify a file to use for password generation.

`-f <path> | --file <path>`

Copy the password to clipboard using xclip.

`-c | --clipboard`

Capitalize each word, making it easier to read.

`-C | --capitalize`

Instead of inserting special characters and numbers, replace the password characters.

`-r | --replace`

Translate accented characters to their normal forms, thus keeping them
from being parsed out. Only works for UTF-8 encoded files.

`-t | --translate-accents`

Maximum amount of resets before the password is trimmed to the maximum
password length. Default: 5

`-A | --max-resets <num>`

Minimum password length. Default: 24

`-B | --min-pass-len <num>`

Maximum password length. Default: 30

`-N | --max-pass-len <num>`

Amount of numbers to insert. Default: 2

`-D | --num-amount <num>`

Amount of special characters to insert. Default: 2

`-E | --spechars-amount <num>`

List of special characters to insert. Avoid using '&' and '$' due to them
messing up the script and $ being interpreted as a variable in the shell.
Default: #%!@+-_=

`-F | --spechars <chars>`

Amount of letters to be capitalized. Default: 3

`-G | --upper-amount <num>`

Amount of letters to be decapitalized. Default: 3

`-H | --lower-amount <num>`

Force the password to have a number of uppercase letters,
based on '--upper-amount'. Gets automatically turned on if there
are no uppercase letters at all.

`-I | --force-upper`

Force the password to have a number of lowercase letters,
based on '--lower-amount'. Gets automatically turned on if
there are no lowercase letters at all.

`-J | --force-lower`

Instead of getting a password with a random length in a certain range,
specify it. This option overrides '--min-pass-len' and '--max-pass-len'.

`-K | --fixed-pass-len <num>`

Prevent the automatic capitalization when there are no uppercase letters.
Gets ignored if '--force-upper' is set.

`-L | --unforce-upper`

Prevent the automatic decapitalization when there are no lowercase letters.
Gets ignored if '--force-lower' is set.

`-M | --unforce-lower`

## Legal

MIT License.
