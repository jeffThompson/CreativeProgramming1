
'''
LOOPS AND CONTROL STRUCTURES
Jeff Thompson | 2017 | jeffreythompson.org

Loops and if/else statements are important structures across
almost all programming languages. Below are some examples
of how these are implemented in Python.

** NOTE! The one thing that can take getting used to in 
Python is spacing. Unlike in Processing, where you can
have as much whitespace as you want, Python uses indenting
to define code block, like curly-brackets {} do in other
langauges. Use either two or four spaces to indent (but
you do have to be consistent). Python also uses colons (:) 
instead of curly brackets for conditionals, for loops, and 
defining functions.

This if statement in Processing:

	if (x > 2) {
	  println("X is greater than 2!");
	}

Looks like this in Python:

	if x > 2:
		print 'I am indented 4 spaces (and x is greater than 2)'

It takes a bit of getting used to, so don't be surprised if
you get errors for a while.


'''

# note that variables in Python don't have "types"!
# (but that boolean values are capitalized)
love_swimming = False
if love_swimming:
	print 'I love swimming!'
else:
	print 'I would rather sit on the beach, thanks.'

# instead of if/else if/else statements like Processing,
# Python uses if/elif/else - just takes getting used to
num_cats = 2
if num_cats == 0:						# same comparisons as Processing and other languages
	print 'I have no cats.'
elif num_cats > 0 and num_cats < 4:		# instead of using &&, Python uses the words 'and' and 'or'!
	print 'I have some cats.'
else:
	print 'I have a *lot* of cats.'

# for loops work the same way as in Processing, but with a
# simpler syntax
for i in range(0, 10):		# prints numbers 0-9
	print i

# we'll see how to loop through lists in the "Words.py" example...

