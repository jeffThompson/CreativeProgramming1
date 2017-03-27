
'''
BASIC CONTROL STRUCTURES
Jeff Thompson | 2017 | jeffreythompson.org

If statements and for loops are important structures across
almost all programming languages. Below are some examples
of how these are implemented in Python.

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
elif num_cats > 0 and num_cats < 4:		# instead of using &&, Python uses 'and' and 'or'!
	print 'I have some cats.'
else:
	print 'I have a *lot* of cats.'

# for loops work the same way as in Processing, but with a
# simpler syntax
for i in range(0, 10):		# prints numbers 0-9
	print i

# we'll see how to loop through lists in the "Words.py" example...

