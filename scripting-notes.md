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
