
'''
FUNCTIONS
Jeff Thompson | 2017 | jeffreythompson.org

In Python, we can define functions just like in Processing. Since Python 
doesn't have variable types, the format for a function is simpler, too.

	def function_name(arg, another_arg):
		new_val = arg * 4
		return new_val

One catch! Functions need to be above any code that calls them, or you'll get an error.

'''

# a really simple function with no arguments - in this case
# it just returns a URL to a great song
def best_song():
	return 'http://bit.ly/IqT6zt'

print 'A great song: ' + best_song()


# a function with two arguments - multiplies them together
def mult(i, j):
	return i * j

val = mult(3, 8)
print 'Three times eight = ' + str(val)		

# note if we want to print a number (val) and a string, we
# do have to convert it to a string too using the str() command


# functions are most useful for tasks you'll use several times, and
# especially for ones that would make your code messy
from datetime import datetime
def grace_hoppers_age():
	'''
	for complex functions, its customary to include a 
	comment like this with information about what it does,
	what arguments it takes, and what values it returns...

	calculates how old Grace Hopper (an important figure
	in computer science, responsible for many ways we write
	code today) would be today, based on today's date

	args:    none
	returns: Hopper's age, in years
	'''
	now = datetime.now()
	birthday = datetime.strptime('Dec 09 1906', '%b %d %Y')
	diff = now - birthday
	return diff.days / 360

print 'Grace Hopper would be ' + str(grace_hoppers_age()) + ' years old today.'


# unlike Processing, Python functions can return several
# values, and of different types, all at once
# note here too the comments inside the function noting what
# it does, what arguments it takes, and what values it returns
# this is good form, making it easier for you and others to
# quickly see what a function does
def todays_weather():
	'''
	what is today's weather forecast?
	args:    none
	returns: conditions, low temp (degrees F), high temp (degrees F)
	'''
	return 'sunny', 53, 75

conditions, low, high = todays_weather()
print 'Today will ' + conditions + ', with a low of ' + str(low) + ' and a high of ' + str(high) + '.'

