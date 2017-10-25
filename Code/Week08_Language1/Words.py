
'''
WORDS
Jeff Thompson | 2017 | jeffreythompson.org

The fundamental unit we'll be using for our bots is language - Python
makes working with strings and text much more friendly than in
Processing, due to the syntax of the language.

CHALLENGES:
1. Can you create other list variables and load some of the other
   word list files into them?

'''

# strings are noted in Python using single-, double-, or triple-quotes.
my_name =     'Jeff'
my_hometown = "Plymouth, Minnesota, USA"
basho_haiku = '''In the twilight rain
these brilliant-hued
hibiscus...
A lovely sunset'''

# (triple-quotes lets us include linebreaks in the string!)

# lists are a set of items, grouped together in order and noted with square brackets
# this is the same as arrays in Processing, though Python makes dealing
# with them a little easier
weather_conditions = [ 'sunny', 'rainy', 'foggy', 'snowy' ]

# looping through them is really easy - try reading this code like a sentence:
# "for each condition in the list of conditions, print the condition"
for condition in weather_conditions:
	print condition

# we can split a string into separate words using the .split()
# method, which retuns a list
s = 'It was the best of times, it was the worst of times.'
words = s.split()		# split at spaces
for word in words:		# loop through the list of split words
	print word 			# note that punctuation remains

# we can also load words from a text file, which is very helpful
# for bots, where you might want a really big vocabulary and don't
# want to clog your source code
nouns = []												# create an empty list
with open('WordLists/SingularNouns.txt') as word_file:	# open the file's contents
	for line in word_file:								# iterate through all lines in the file
		word = line.strip()								# remove newline (\n) characters
		nouns.append(word)								# add to list of words!
print nouns[0:20]										# print the first 20 nouns in the list

# changing the 'case' of a word can be helpful for bots too
s = 'The quick brown fox jumps over the lazy dog.'
print s.upper()			# all uppercase
print s.title()			# first letter of every word uppercase
print s.lower()			# all lowercase

