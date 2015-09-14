# Shell Scripting Notes

Here are some notes from my reading.

## Shell Scripting

2 requirements for matching:

1. each character in the search pattern has to match the string
2. each character in the string that is searched has to match the pattern

**?** matches any _one_ character    

**asterisk** matches anything - even nothing!

Character class

	[[:_class_:]]

where _class_ is `punct`, `alpha`, `digit`, etc.

match a specific character or character set

Let's say you have a list of images:

	img001.jpg
	img002.jpg
	img003.jpg
	img010.jpg
	img100.jpg

Say you want to only find images numbered less than 10...

	ls img00[0-9].jpg
## Variables

names start with letters or underscores - can't start with numbers

2 types

* scalar
* array - many values, indexed

set a variable:

	variablename=value
	innings=9
	
	$ echo $innings
	$ 9
	
unset a variable:

	unset innings
	
	$ unset innings
	$ echo $innings
	$

## math

exponents: $(( exp ))
	ex: echo $(( 5/2 ))
	$ 2 # answer is 2.5, but this is integer math

## quoting

1. Single quotes - all meta characters inside the single quotes are treated literally and have no special meaning
2. Double quotes - variable and command substitution works but meta-characters are ignored (except for `\`` and `$`.
3. Always single quote regular expressions so the shell does not do filename expansion
4. Back slashes - if a backslash is inside **double** quotes, it will have no special meaning unless it is followed by a $, \`, \", or \\

## flow control

return codes:

* `0`: true
* `1`: false

`if` statement

	if blah
	then
		blah2
	elif blah3
	then
		blah4
	else
		blah5
	fi


There can be many `elif` statements.

Brackets

These two statements are the same:

	test -e /home/ers/testscript.sh

	[ -e /home/ers/testscript.sh ]

exit code

	$ $?

`$-` is a listing of shell options

## Loops

Two main types:

* for
* while

### `while` loop

Used to repeat a list of commands until reality meets some defined condition(s).

Format:

`while` _`command`_    
`do`    
_`series of commands`_    
`done`    

or

`while` _`command`_; `do` _`series of commands`_; `done`

**Example**

	count=0
	while [ $count -lt 5 ]
	do
		echo $count
		  count=`expr $count + 1`
	done

### `until` loop

This loop is used to run a list of commands until a defined condition is true. Note that this is available in `/bin/bash` and not `/bin/sh`.

Format:

`until` _`command`_
`do`
`series of ` _`commands`_
`done`

Note: if the exit code of the `command` is anything but zero, it will exit from the loop - hence the 'until' name.

### `for` loop

This loop is used to run a list of commands for items on a list.

Format:

`for` _`variable-name`_ `in` _`some_file`_    
`do`    
_`list_of_commands`_    
`done`    

## controlling loops with `break` and `continue`

### `break`

The `break` command is used to break a loop.

Upon meeting the conditions in the break statement, the loop will be exited and restarted at the beginning of the loop.

### `continue`

This cancels the current instance of the loop to quit and NOT the entire loop.

### `continue`


