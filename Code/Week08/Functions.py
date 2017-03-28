
'''
FUNCTIONS
Jeff Thompson | 2017 | jeffreythompson.org

In Python, we can define functions just like in Processing. Since Python 
doesn't have variable types, the format for a function is simpler, too.

	def function_name(arg, another_arg):
		new_val = arg * 4
		return new_val

One catch! Functions need to be above any code that calls them, or you'll
get an error.

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


# functions are most useful for tasks you'll use several times, and
# especially for ones that would make your code messy
from datetime import datetime
def picards_age():
	'''
	for complex functions, its customary to include a 
	comment like this with information about what it does,
	what arguments it takes, and what values it returns...

	calculates Jean Luc Picard's age, based on today's date

	args:    none
	returns: Picard's age, in years
	'''
	now = datetime.now()
	birthday = datetime.strptime('Jul 13 2305', '%b %d %Y')
	diff = now - birthday
	return diff.days / 360

print 'Jean Luc Picard is ' + str(picards_age()) + ' years old.'


# unlike Processing, Python functions can return several
# values, and of different types
def todays_weather():
	'''
	what is today's weather forecast?
	args:    none
	returns: conditions, low temp (degrees F), high temp (degrees F)
	'''
	return 'sunny', 53, 75

conditions, low, high = todays_weather()
print 'Today will ' + conditions + ', with a low of ' + str(low) + ' and a high of ' + str(high) + '.'

